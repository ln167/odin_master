// zrun — native task runner for Zed.
//
// Why: Zed wraps tasks in a shell. Even with cmd, we want sub-shell-overhead
// reporting: how long did the Odin compile take, how long did the program
// take to run. zrun spawns binaries directly via CreateProcess and prints
// millisecond-resolution timings around each phase.
//
// Build: `cargo build --release` → target/release/zrun.exe

use std::env;
use std::fs;
use std::path::{Path, PathBuf};
use std::process::{Command, ExitCode};
use std::time::{Instant, SystemTime};

const ODIN: &str = r"C:\Users\user1\odin\dist\odin.exe";

fn env_or_die(name: &str) -> String {
    env::var(name).unwrap_or_else(|_| {
        eprintln!("zrun: ${} not set (Zed normally provides it)", name);
        std::process::exit(2);
    })
}

fn mtime(p: &Path) -> Option<SystemTime> {
    fs::metadata(p).ok()?.modified().ok()
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

fn main() -> ExitCode {
    let task = match env::args().nth(1) {
        Some(t) => t,
        None => {
            eprintln!("usage: zrun <task>");
            eprintln!("tasks: odin-run, odin-build, odin-build-debug, odin-build-pkg, odin-raddbg");
            return ExitCode::from(2);
        }
    };

    let total = Instant::now();
    let code = match task.as_str() {
        // Split odin-run into compile + exec for separate timings.
        // mtime cache: skip compile if .exe is newer than the source.
        // -file mode only sees the single source; no transitive deps to track.
        "odin-run" => {
            let file = env_or_die("ZED_FILE");
            let dir = env_or_die("ZED_DIRNAME");
            let stem = env_or_die("ZED_STEM");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let out_path = PathBuf::from(&dir).join(format!("{stem}.exe"));

            let needs_build = match (mtime(Path::new(&file)), mtime(&out_path)) {
                (Some(src), Some(exe)) => src > exe,
                _ => true, // exe missing or stat failed → rebuild
            };

            let build_code = if needs_build {
                let out_arg = format!("-out:{}", out_path.display());
                timed("compile", &[ODIN, "build", &file, "-file", &out_arg], Some(&root))
            } else {
                eprintln!("[zrun] compile: cached (source unchanged)");
                0
            };

            if build_code != 0 {
                build_code
            } else {
                timed("run    ", &[out_path.to_str().unwrap()], Some(&dir))
            }
        }
        "odin-build" => {
            let file = env_or_die("ZED_FILE");
            let dir = env_or_die("ZED_DIRNAME");
            let stem = env_or_die("ZED_STEM");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let out = format!("-out:{}\\{}.exe", dir, stem);
            timed("compile", &[ODIN, "build", &file, "-file", &out], Some(&root))
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
