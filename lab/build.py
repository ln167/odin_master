#!/usr/bin/env python3
"""Build, watch, and run the lab hot-reload DLL + host."""
import platform, shutil, subprocess, sys, time
from pathlib import Path

ROOT = Path(__file__).parent.resolve()
HOT = ROOT / "build" / "hot_reload"
SRC = ROOT / "src"

EXT = {"linux": ".so", "darwin": ".dylib", "windows": ".dll"}[platform.system().lower()]
EXE = ".exe" if platform.system().lower() == "windows" else ""
ODIN = shutil.which("odin") or sys.exit("odin not on PATH")
ODIN_ROOT = Path(ODIN).resolve().parent
SDL_NAME = {"linux": "libSDL3.so.0", "darwin": "libSDL3.dylib", "windows": "SDL3.dll"}[platform.system().lower()]
# vnd: collection — Dear ImGui bindings (vendored at the repo root, shared with tools/ui)
VND = f"-collection:vnd={ROOT.parent / 'tools' / 'domains' / 'odin' / 'odin_lib' / 'vendor'}"

if platform.system().lower() == "windows":  # enable ANSI so the watch screen-clear works in plain conhost
    import ctypes
    k = ctypes.windll.kernel32
    k.SetConsoleMode(k.GetStdHandle(-11), 7)


def ensure_sdl():
    """SDL3.dll must sit next to anything that links package game (even labx,
    which never calls SDL — the import lib makes the loader want the DLL)."""
    HOT.mkdir(parents=True, exist_ok=True)
    sdl_src = ODIN_ROOT / "vendor" / "sdl3" / SDL_NAME
    sdl_dst = HOT / SDL_NAME
    if sdl_src.exists() and not sdl_dst.exists():
        shutil.copy2(sdl_src, sdl_dst)


def hot():
    ensure_sdl()
    cmd = [ODIN, "build", "src/game", "-build-mode:dll", "-debug", VND,
           f"-out:{HOT / ('game' + EXT)}"]
    if platform.system().lower() == "windows":
        cmd.append(f"-pdb-name:{HOT / f'game_{time.time_ns()}.pdb'}")
    subprocess.run(cmd, cwd=ROOT, check=True)
    host = HOT / ("lab" + EXE)
    host_src = ROOT / "src" / "main_hot_reload.odin"
    if not host.exists() or host_src.stat().st_mtime > host.stat().st_mtime:
        try:
            subprocess.run([ODIN, "build", str(host_src), "-file",
                            "-debug", f"-out:{host}"], cwd=ROOT, check=True)
        except subprocess.CalledProcessError:
            if host.exists():
                # the running host locks its own exe; DLL swaps still work —
                # the new host code lands on the next `just lab` restart
                print("[hot] host exe locked (running); restart `just lab` to refresh the host")
            else:
                raise


def src_mtime() -> float:
    """Newest mtime across all Odin sources under src/ (0 if none)."""
    return max((p.stat().st_mtime for p in SRC.rglob("*.odin")), default=0.0)


def watch():
    """Build once, launch the host, and rebuild the DLL on every src/ save.

    One terminal: `just lab`. Edit anything under src/, save, and the running
    host swaps the new DLL within ~16 ms (Game_Memory survives). A `Game_Memory`
    struct-shape change still needs a manual restart — the host sees the
    size_of mismatch, skips the swap, and asks you to close the window and re-run.
    """
    hot()
    host = subprocess.Popen([str(HOT / ("lab" + EXE))], cwd=ROOT)
    print("[watch] host running — edit src/ and save to hot-reload; close the window or Ctrl+C to stop")
    last = src_mtime()
    try:
        while host.poll() is None:
            time.sleep(0.05)
            m = src_mtime()
            if m > last:
                last = m  # set before building so a failed build doesn't re-fire until the next save
                print("\033[2J\033[H[watch] building…", flush=True)
                try:
                    hot()
                    print("[watch] OK — host swaps within ~16 ms")
                except subprocess.CalledProcessError:
                    print("\n[watch] BUILD FAILED — fix the error above and save again")
    except KeyboardInterrupt:
        print("\n[watch] stopping")
    finally:
        if host.poll() is None:
            host.terminate()
            try:
                host.wait(timeout=3)
            except subprocess.TimeoutExpired:
                host.kill()


def test():
    ensure_sdl()
    out = HOT / ("labtest" + EXE)
    subprocess.run([ODIN, "build", "src/test", "-debug", "-define:LAB_HEADLESS=true",
                    "-collection:src=src", VND, f"-out:{out}"], cwd=ROOT, check=True)
    rc = subprocess.run([str(out)], cwd=ROOT).returncode
    if rc != 0:
        sys.exit(rc)
    guard()


def guard():
    """Determinism guard: the same headless run must hash identically
    run-to-run and across -o:none vs -o:speed (a hash mismatch here means the
    optimizer changed trajectory math — a real Odin/LLVM footgun). Input gates
    are pinned via LAB_DEBUG_KEYS so both builds handle keys identically."""
    base = [ODIN, "build", "src/headless", "-define:LAB_DEBUG_KEYS=true",
            "-define:LAB_HEADLESS=true", "-collection:src=src", VND]
    none_exe = HOT / ("labx_none" + EXE)
    speed_exe = HOT / ("labx_speed" + EXE)
    subprocess.run([*base, "-o:none", f"-out:{none_exe}"], cwd=ROOT, check=True)
    subprocess.run([*base, "-o:speed", f"-out:{speed_exe}"], cwd=ROOT, check=True)
    args = ["-frames:600", "-state-every:0", "-arena"]

    def run_hash(exe):
        r = subprocess.run([str(exe), *args], cwd=ROOT, capture_output=True, text=True)
        if r.returncode != 0:
            print(r.stdout, r.stderr, sep="\n")
            sys.exit(f"guard: {exe.name} exited {r.returncode}")
        for line in r.stdout.splitlines():
            if line.startswith("hash="):
                return line
        sys.exit(f"guard: no hash line from {exe.name}")

    a, b, c = run_hash(none_exe), run_hash(none_exe), run_hash(speed_exe)
    if a != b:
        sys.exit(f"DETERMINISM: run-to-run differs at -o:none: {a} vs {b}")
    if a != c:
        sys.exit(f"DETERMINISM: -o:none vs -o:speed differ: {a} vs {c}")
    print(f"determinism guard PASS ({a})")


def labx():
    """Build the headless runner and run it; argv after 'labx' pass through."""
    ensure_sdl()
    out = HOT / ("labx" + EXE)
    subprocess.run([ODIN, "build", "src/headless", "-debug", "-define:LAB_DEBUG_KEYS=true",
                    "-define:LAB_HEADLESS=true", "-collection:src=src", VND, f"-out:{out}"], cwd=ROOT, check=True)
    sys.exit(subprocess.run([str(out), *sys.argv[2:]], cwd=ROOT).returncode)


def clean():
    if (ROOT / "build").exists():
        shutil.rmtree(ROOT / "build")


CMDS = {"hot": hot, "watch": watch, "test": test, "labx": labx, "clean": clean}
if __name__ == "__main__":
    if len(sys.argv) < 2 or sys.argv[1] not in CMDS:
        sys.exit("usage: build.py {hot|watch|test|labx|clean} [labx args...]")
    if sys.argv[1] != "labx" and len(sys.argv) != 2:
        sys.exit("usage: build.py {hot|watch|test|labx|clean} [labx args...]")
    CMDS[sys.argv[1]]()
