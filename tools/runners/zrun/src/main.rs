// zrun — native task runner for Zed.
//
// Why: Zed wraps tasks in a shell. Even with cmd, we want sub-shell-overhead
// reporting: how long did the Odin compile take, how long did the program
// take to run. zrun spawns binaries directly via CreateProcess and prints
// millisecond-resolution timings around each phase.
//
// The dial (off|on|max) is a PROJECT setting, not a keybind: it lives in the
// `.tele` file at the worktree root and is read fresh each run. The two run
// tasks (console `odin-run`, windowless `odin-run-log`) honor it — at `max`
// the package is woven into a throwaway mirror and built at TELE=max (the
// firehose); at `on`/`off` they build the source directly, exactly as before.
// The output SINK is the keybind (console vs windowless); the dial is the
// config. Switching the dial is the rare action, so it's a file edit, not a key.
//
// Build: `cargo build --release` → target/release/zrun.exe
//
// Claim-path protection: weaving happens ONLY here, in the run tasks. claim.py
// and plain `odin build` never weave — they build raw source — so verification
// stays byte-stable regardless of the dial.

use std::env;
use std::fs;
use std::os::windows::process::CommandExt;
use std::path::{Path, PathBuf};
use std::process::{Command, ExitCode};
use std::time::{Instant, SystemTime};

const ODIN: &str = r"C:\Users\user1\odin\dist\odin.exe";
// The CLI *launcher* (bin\Zed.exe), not the top-level GUI binary. It's the
// purpose-built shim that forwards file args into the already-running instance
// and exits — so `--add` reliably reuses the current window instead of
// risking a new one. This is the same binary `zed` resolves to from cmd.exe
// (via PATHEXT) in .zed/tasks.json, so behavior matches the proven tasks.
const ZED: &str = r"C:\Users\user1\AppData\Local\Programs\Zed\bin\Zed.exe";

// Windows process-creation flag: launch the child with NO console window so an
// interactive "run" doesn't flash a terminal. Output is redirected to a file.
const CREATE_NO_WINDOW: u32 = 0x0800_0000;

fn env_or_die(name: &str) -> String {
    env::var(name).unwrap_or_else(|_| {
        eprintln!("zrun: ${} not set (Zed normally provides it)", name);
        std::process::exit(2);
    })
}

fn mtime(p: &Path) -> Option<SystemTime> {
    fs::metadata(p).ok()?.modified().ok()
}

// Newest mtime across the *.odin sources directly in `dir` (the package). Used
// as the rebuild cache key in package mode: editing any sibling triggers a
// recompile. Imports in other dirs aren't tracked — Odin is fast enough that a
// stale-import miss is cheap to fix with a re-run, and it keeps this O(dir).
fn newest_odin(dir: &Path) -> Option<SystemTime> {
    let mut newest: Option<SystemTime> = None;
    for entry in fs::read_dir(dir).ok()?.flatten() {
        let p = entry.path();
        if p.extension().and_then(|s| s.to_str()) == Some("odin") {
            if let Some(m) = mtime(&p) {
                if newest.map_or(true, |n| m > n) {
                    newest = Some(m);
                }
            }
        }
    }
    newest
}

// Does any *.odin source directly in `dir` mention `needle` (an import-path
// prefix like "odin_lib:" or "vnd:")? Lets us pass a collection/define only
// when the package actually uses it — an unused -define warns, unused flags
// are noise. Scans only the package's own dir (one level), which is cheap.
fn pkg_uses(dir: &Path, needle: &str) -> bool {
    if let Ok(entries) = fs::read_dir(dir) {
        for entry in entries.flatten() {
            let p = entry.path();
            if p.extension().and_then(|s| s.to_str()) == Some("odin") {
                if let Ok(text) = fs::read_to_string(&p) {
                    if text.contains(needle) {
                        return true;
                    }
                }
            }
        }
    }
    false
}

// The active dial, read fresh from `<root>\.tele` each run. The file's first
// non-blank, non-`#` line names the dial; first whitespace token wins, case-
// insensitive. Missing/garbled → "on" (the lean default that preserves prior
// behavior, where a tele-importing package built at TELE=on). This is the one
// project setting that decides what a run compiles in.
fn tele_dial(root: &str) -> String {
    let path = PathBuf::from(root).join(".tele");
    let text = match fs::read_to_string(&path) {
        Ok(t) => t,
        Err(_) => return "on".to_string(),
    };
    for line in text.lines() {
        let line = line.trim();
        if line.is_empty() || line.starts_with('#') {
            continue;
        }
        let tok = line.split_whitespace().next().unwrap_or("").to_ascii_lowercase();
        return match tok.as_str() {
            "off" | "on" | "max" => tok,
            _ => "on".to_string(),
        };
    }
    "on".to_string()
}

// Collection/define flags the package needs, by which shared collections it
// imports, at the given dial. Mirrors lab/build.py: odin_lib + vnd collections,
// plus -define:TELE=<dial> when the telemetry package is imported — so
// tracing/telemetry "just works" without spamming unused-define warnings on the
// self-contained demos and lessons that don't touch it. At `max` this reads the
// WOVEN mirror, whose injected captures import odin_lib:tele, so the firehose
// pulls in its collection + define exactly when there's something to record.
fn shared_flags(dir: &Path, root: &str, dial: &str) -> Vec<String> {
    let mut v = Vec::new();
    if pkg_uses(dir, "odin_lib:") {
        v.push(format!(r"-collection:odin_lib={root}\tools\domains\odin\odin_lib"));
    }
    if pkg_uses(dir, "vnd:") {
        v.push(format!(r"-collection:vnd={root}\tools\domains\odin\odin_lib\vendor"));
    }
    if pkg_uses(dir, "odin_lib:tele") {
        v.push(format!("-define:TELE={dial}"));
    }
    v
}

// Weave the source package `src_dir` into a throwaway mirror under
// <root>\.tele-woven\<pkg>, rebuilt from scratch each run. The developer's
// source is NEVER written (scratch/ is read-only to us); the mirror is a build
// artifact. `log: Some(p)` captures the weaver's output into run.log (windowless
// mode, so a weave error reaches the Reader); `None` inherits stdio (console).
// Returns the woven dir on success, or Err(exit_code) with the error already
// surfaced on the right channel.
fn weave_to(root: &str, src_dir: &str, pkg: &str, log: Option<&Path>) -> Result<PathBuf, i32> {
    let woven = PathBuf::from(root).join(".tele-woven").join(pkg);
    let _ = fs::remove_dir_all(&woven);
    if let Err(e) = fs::create_dir_all(&woven) {
        let msg = format!("[zrun] weave: cannot create {}: {e}", woven.display());
        match log {
            Some(p) => { let _ = fs::write(p, format!("{msg}\n")); }
            None => eprintln!("{msg}"),
        }
        return Err(1);
    }
    let weaver = format!(r"{root}\tools\domains\odin\weaver\weave.exe");
    let wargv = [weaver.as_str(), src_dir, woven.to_str().unwrap()];
    let code = match log {
        Some(p) => build_to_log(&wargv, root, p),
        None => timed("weave  ", &wargv, Some(root)),
    };
    if code != 0 {
        return Err(code);
    }
    Ok(woven)
}

fn timed(label: &str, args: &[&str], cwd: Option<&str>) -> i32 {
    let start = Instant::now();
    let status = Command::new(args[0])
        .args(&args[1..])
        .current_dir(cwd.unwrap_or("."))
        .status();
    let elapsed = start.elapsed();
    let ms = elapsed.as_secs_f64() * 1000.0;
    match status {
        Ok(s) => {
            eprintln!("[zrun] {label}: {ms:.1} ms (exit {})", s.code().unwrap_or(-1));
            s.code().unwrap_or(1)
        }
        Err(e) => {
            eprintln!("[zrun] {label}: spawn failed after {ms:.1} ms: {e}");
            1
        }
    }
}

// Run a built exe with NO console window, capturing stdout+stderr into `log_path`
// (truncated each run); wait for exit. The windowless 2nd run-mode — output lands
// in a file a Reader opens instead of flashing a terminal. The canonical inline
// `odin-run` + the claim harness's stdout path are left untouched.
fn run_to_log(exe: &str, cwd: &str, log_path: &Path) -> i32 {
    let start = Instant::now();
    let out = match fs::File::create(log_path) {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] run→log: cannot create {}: {e}", log_path.display()); return 1; }
    };
    let err = match out.try_clone() {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] run→log: clone handle failed: {e}"); return 1; }
    };
    let status = Command::new(exe)
        .current_dir(cwd)
        .stdout(out)
        .stderr(err)
        .creation_flags(CREATE_NO_WINDOW)
        .status();
    let ms = start.elapsed().as_secs_f64() * 1000.0;
    match status {
        Ok(s) => { eprintln!("[zrun] run→log: {ms:.1} ms (exit {}) → {}", s.code().unwrap_or(-1), log_path.display()); s.code().unwrap_or(1) }
        Err(e) => { eprintln!("[zrun] run→log: spawn failed after {ms:.1} ms: {e}"); 1 }
    }
}

// Build a package with NO console window, capturing the COMPILER's stdout+stderr
// into `log_path` (truncated). The point of windowless mode is that nothing —
// not even a build failure — flashes a terminal: compile errors land in run.log
// right where the Reader is already looking. argv[0] is the odin exe (or, for a
// weave step, the weaver exe — same capture contract).
fn build_to_log(argv: &[&str], cwd: &str, log_path: &Path) -> i32 {
    let start = Instant::now();
    let out = match fs::File::create(log_path) {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] build→log: cannot create {}: {e}", log_path.display()); return 1; }
    };
    let err = match out.try_clone() {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] build→log: clone handle failed: {e}"); return 1; }
    };
    let status = Command::new(argv[0])
        .args(&argv[1..])
        .current_dir(cwd)
        .stdout(out)
        .stderr(err)
        .creation_flags(CREATE_NO_WINDOW)
        .status();
    let ms = start.elapsed().as_secs_f64() * 1000.0;
    match status {
        Ok(s) => { eprintln!("[zrun] build→log: {ms:.1} ms (exit {})", s.code().unwrap_or(-1)); s.code().unwrap_or(1) }
        Err(e) => { eprintln!("[zrun] build→log: spawn failed after {ms:.1} ms: {e}"); 1 }
    }
}

// Append a single status line to run.log (so the Reader sees the run's exit
// code / a build-failed marker without a terminal). Best-effort; never fails
// the run. Called after the capture handle is closed.
fn append_line(log_path: &Path, line: &str) {
    use std::io::Write;
    if let Ok(mut f) = fs::OpenOptions::new().append(true).open(log_path) {
        let _ = writeln!(f, "{line}");
    }
}

// Open (or focus) the log in the already-running Zed window. `--add` = current
// workspace, not a new window. Detached. NOTE: settings has
// cli_default_open_behavior:new_window — verify `--add` doesn't spawn a new
// window; if it does, that's the first thing to fix during testing.
fn open_in_zed(log_path: &Path, cwd: &str) {
    match Command::new(ZED).arg("--add").arg(log_path).current_dir(cwd).spawn() {
        Ok(_)  => eprintln!("[zrun] opened {} in Zed", log_path.display()),
        Err(e) => eprintln!("[zrun] could not open Zed ({e}); log at {}", log_path.display()),
    }
}

// Console run-mode (terminal-visible). Runs the current file's PACKAGE (its
// whole dir), not just the one file, so multi-file programs resolve siblings +
// imports. The shared collections + the active dial mirror the lab build so
// telemetry/tracing imports just work. Cache: rebuild only if some *.odin in the
// built package is newer than the exe. At `max` the built package is the woven
// mirror (always fresh → always rebuilt), so the firehose tracks current source.
fn run_console(root: &str, dir: &str) -> i32 {
    let dial = tele_dial(root);
    eprintln!("[zrun] dial: {dial}{}", if dial == "max" { " (woven firehose)" } else { "" });
    let dir_path = PathBuf::from(dir);
    let pkg = dir_path.file_name().and_then(|s| s.to_str()).unwrap_or("out");

    let build_dir = if dial == "max" {
        match weave_to(root, dir, pkg, None) {
            Ok(w) => w,
            Err(c) => return c, // weave error already printed
        }
    } else {
        dir_path.clone()
    };
    let out_path = build_dir.join(format!("{pkg}.exe"));

    let needs_build = match (newest_odin(&build_dir), mtime(&out_path)) {
        (Some(src), Some(exe)) => src > exe,
        _ => true, // exe missing or stat failed → rebuild
    };

    let build_code = if needs_build {
        let out_arg = format!("-out:{}", out_path.display());
        let mut args: Vec<String> = vec![ODIN.into(), "build".into(), build_dir.to_str().unwrap().to_string()];
        args.extend(shared_flags(&build_dir, root, &dial));
        if dial == "max" {
            // The compiled package is the woven MIRROR, so a capture's loc points into
            // .tele-woven/<pkg>. Hand the renderer the real source dir so it remaps the path
            // back at render time (spec 5.2); line numbers are already correct (same-line inject).
            args.push(format!("-define:TELE_SRC_ROOT={dir}"));
        }
        args.push(out_arg);
        let argv: Vec<&str> = args.iter().map(String::as_str).collect();
        timed("compile", &argv, Some(root))
    } else {
        eprintln!("[zrun] compile: cached (package unchanged)");
        0
    };

    if build_code != 0 {
        build_code
    } else {
        // cwd = the SOURCE dir (relative file access matches a normal run), even
        // though at max the exe lives in the woven mirror.
        timed("run    ", &[out_path.to_str().unwrap()], Some(dir))
    }
}

// Windowless run-mode. The contract: pressing the key NEVER flashes a terminal —
// not on success, not on a runtime error, not on a weave/build failure.
// EVERYTHING the Reader needs (program stdout+stderr, OR weave/compiler errors,
// plus a final status line naming the dial) is captured into <root>\run.log,
// which is opened in Zed. zrun therefore ALWAYS returns 0 so the Zed task never
// auto-reveals a pane — the real status is the footer line inside run.log.
// At `max` the package is woven first (errors captured into run.log too).
fn run_windowless(root: &str, dir: &str) -> i32 {
    let dial = tele_dial(root);
    let dir_path = PathBuf::from(dir);
    let pkg = dir_path.file_name().and_then(|s| s.to_str()).unwrap_or("out");
    let log_path = PathBuf::from(root).join("run.log");

    let build_dir = if dial == "max" {
        match weave_to(root, dir, pkg, Some(&log_path)) {
            Ok(w) => w,
            Err(c) => {
                append_line(&log_path, &format!("\n[zrun] dial: max — WEAVE FAILED (exit {c})."));
                open_in_zed(&log_path, root);
                return 0;
            }
        }
    } else {
        dir_path.clone()
    };
    let out_path = build_dir.join(format!("{pkg}.exe"));

    let needs_build = match (newest_odin(&build_dir), mtime(&out_path)) {
        (Some(src), Some(exe)) => src > exe,
        _ => true,
    };

    // Build (capturing weave/compiler errors INTO run.log) if stale. On failure,
    // run.log already holds the diagnostics — mark it and stop before run.
    let build_failed = if needs_build {
        let out_arg = format!("-out:{}", out_path.display());
        let mut args: Vec<String> = vec![ODIN.into(), "build".into(), build_dir.to_str().unwrap().to_string()];
        args.extend(shared_flags(&build_dir, root, &dial));
        if dial == "max" {
            // The windowless sink is a FILE opened in Zed (no ANSI rendering), so
            // emit the plain greppable machine format, not the terminal's colored
            // human format. (Console mode keeps the default human colors.)
            args.push("-define:TELE_FORMAT=machine".to_string());
            // Woven mirror is compiled, so remap each capture's loc back to the source dir
            // at render time (spec 5.2). Line numbers are already correct (same-line inject).
            args.push(format!("-define:TELE_SRC_ROOT={dir}"));
        }
        args.push(out_arg);
        let argv: Vec<&str> = args.iter().map(String::as_str).collect();
        let bc = build_to_log(&argv, root, &log_path);
        if bc != 0 {
            append_line(&log_path, &format!("\n[zrun] BUILD FAILED (exit {bc}) — fix the errors above, then re-run."));
            true
        } else {
            false
        }
    } else {
        eprintln!("[zrun] compile: cached (package unchanged)");
        false
    };

    if !build_failed {
        let run_code = run_to_log(out_path.to_str().unwrap(), dir, &log_path);
        append_line(&log_path, &format!("\n[zrun] dial: {dial} — process exited {run_code}"));
    }
    open_in_zed(&log_path, root);
    0 // always succeed to Zed; true status is in run.log's footer
}

fn main() -> ExitCode {
    let task = match env::args().nth(1) {
        Some(t) => t,
        None => {
            eprintln!("usage: zrun <task>");
            eprintln!("tasks: odin-run, odin-run-log, odin-build, odin-build-debug, odin-build-pkg, odin-raddbg");
            eprintln!("dial (off|on|max) is read from <root>\\.tele — affects odin-run / odin-run-log");
            return ExitCode::from(2);
        }
    };

    let total = Instant::now();
    let code = match task.as_str() {
        "odin-run" => {
            let dir = env_or_die("ZED_DIRNAME");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            run_console(&root, &dir)
        }
        "odin-run-log" => {
            let dir = env_or_die("ZED_DIRNAME");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            run_windowless(&root, &dir)
        }
        // Build (no run) the current file's PACKAGE — same dir+collections+dial as
        // a console run, so a build check matches what a run would compile. Never
        // weaves (a raw-source compile check); at max it just builds with
        // -define:TELE=max, which compiles in the W1 hooks if tele is imported.
        "odin-build" => {
            let dir = env_or_die("ZED_DIRNAME");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let dial = tele_dial(&root);
            let dir_path = PathBuf::from(&dir);
            let pkg = dir_path.file_name().and_then(|s| s.to_str()).unwrap_or("out");
            let out = format!(r"-out:{dir}\{pkg}.exe");
            let mut args: Vec<String> = vec![ODIN.into(), "build".into(), dir.clone()];
            args.extend(shared_flags(&dir_path, &root, &dial));
            args.push(out);
            let argv: Vec<&str> = args.iter().map(String::as_str).collect();
            timed("compile", &argv, Some(&root))
        }
        "odin-build-debug" => {
            let file = env_or_die("ZED_FILE");
            let dir = env_or_die("ZED_DIRNAME");
            let stem = env_or_die("ZED_STEM");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let out = format!("-out:{}\\{}.dbg.exe", dir, stem);
            timed(
                "compile(debug)",
                &[ODIN, "build", &file, "-file", "-debug", &out],
                Some(&root),
            )
        }
        "odin-build-pkg" => {
            let root = env_or_die("ZED_WORKTREE_ROOT");
            timed(
                "compile(pkg)",
                &[ODIN, "build", ".", "-out:build\\debug\\app"],
                Some(&root),
            )
        }
        "odin-raddbg" => {
            let file = env_or_die("ZED_FILE");
            let dir = env_or_die("ZED_DIRNAME");
            let stem = env_or_die("ZED_STEM");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let dbg = format!("{}\\{}.dbg.exe", dir, stem);
            let out = format!("-out:{}", dbg);
            let build_code = timed(
                "compile(debug)",
                &[ODIN, "build", &file, "-file", "-debug", &out],
                Some(&root),
            );
            if build_code != 0 {
                build_code
            } else {
                let raddbg = format!(r"{}\tools\debug\raddbg\raddbg.exe", root);
                let start = Instant::now();
                match Command::new(&raddbg).arg(&dbg).spawn() {
                    Ok(_) => {
                        let ms = start.elapsed().as_secs_f64() * 1000.0;
                        eprintln!("[zrun] launch raddbg: {ms:.1} ms (detached)");
                        0
                    }
                    Err(e) => {
                        eprintln!("[zrun] launch raddbg failed: {e}");
                        1
                    }
                }
            }
        }
        other => {
            eprintln!("zrun: unknown task '{}'", other);
            return ExitCode::from(2);
        }
    };

    let total_ms = total.elapsed().as_secs_f64() * 1000.0;
    eprintln!("[zrun] total: {total_ms:.1} ms");
    ExitCode::from(code as u8)
}
