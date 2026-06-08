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

if platform.system().lower() == "windows":  # enable ANSI so the watch screen-clear works in plain conhost
    import ctypes
    k = ctypes.windll.kernel32
    k.SetConsoleMode(k.GetStdHandle(-11), 7)


def hot():
    HOT.mkdir(parents=True, exist_ok=True)
    sdl_src = ODIN_ROOT / "vendor" / "sdl3" / SDL_NAME
    sdl_dst = HOT / SDL_NAME
    if sdl_src.exists() and not sdl_dst.exists():
        shutil.copy2(sdl_src, sdl_dst)
    cmd = [ODIN, "build", "src/game", "-build-mode:dll", "-debug",
           f"-out:{HOT / ('game' + EXT)}"]
    if platform.system().lower() == "windows":
        cmd.append(f"-pdb-name:{HOT / f'game_{time.time_ns()}.pdb'}")
    subprocess.run(cmd, cwd=ROOT, check=True)
    host = HOT / ("lab" + EXE)
    host_src = ROOT / "src" / "main_hot_reload.odin"
    if not host.exists() or host_src.stat().st_mtime > host.stat().st_mtime:
        subprocess.run([ODIN, "build", str(host_src), "-file",
                        "-debug", f"-out:{host}"], cwd=ROOT, check=True)


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
    HOT.mkdir(parents=True, exist_ok=True)
    sdl_src = ODIN_ROOT / "vendor" / "sdl3" / SDL_NAME
    sdl_dst = HOT / SDL_NAME
    if sdl_src.exists() and not sdl_dst.exists():
        shutil.copy2(sdl_src, sdl_dst)
    out = HOT / ("labtest" + EXE)
    subprocess.run([ODIN, "build", "src/test", "-debug", "-collection:src=src", f"-out:{out}"], cwd=ROOT, check=True)
    sys.exit(subprocess.run([str(out)], cwd=ROOT).returncode)


def clean():
    if (ROOT / "build").exists():
        shutil.rmtree(ROOT / "build")


CMDS = {"hot": hot, "watch": watch, "test": test, "clean": clean}
if __name__ == "__main__":
    if len(sys.argv) != 2 or sys.argv[1] not in CMDS:
        sys.exit("usage: build.py {hot|watch|test|clean}")
    CMDS[sys.argv[1]]()
