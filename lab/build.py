#!/usr/bin/env python3
"""Build the lab hot-reload DLL (and host on first run)."""
import platform, shutil, subprocess, sys, time
from pathlib import Path

ROOT = Path(__file__).parent.resolve()
HOT = ROOT / "build" / "hot_reload"

EXT = {"linux": ".so", "darwin": ".dylib", "windows": ".dll"}[platform.system().lower()]
EXE = ".exe" if platform.system().lower() == "windows" else ""
ODIN = shutil.which("odin") or sys.exit("odin not on PATH")
ODIN_ROOT = Path(ODIN).resolve().parent
SDL_NAME = {"linux": "libSDL3.so.0", "darwin": "libSDL3.dylib", "windows": "SDL3.dll"}[platform.system().lower()]


def hot():
    HOT.mkdir(parents=True, exist_ok=True)
    sdl_src = ODIN_ROOT / "vendor" / "sdl3" / SDL_NAME
    sdl_dst = HOT / SDL_NAME
    if sdl_src.exists() and not sdl_dst.exists():
        shutil.copy2(sdl_src, sdl_dst)
    cmd = [ODIN, "build", "src/game", "-build-mode:dll", "-debug",
           f"-out:{HOT / ('game' + EXT)}"]
    if platform.system().lower() == "windows":
        cmd.append(f"-pdb-name:{HOT / f'game_{int(time.time())}.pdb'}")
    subprocess.run(cmd, cwd=ROOT, check=True)
    host = HOT / ("lab" + EXE)
    host_src = ROOT / "src" / "main_hot_reload.odin"
    if not host.exists() or host_src.stat().st_mtime > host.stat().st_mtime:
        subprocess.run([ODIN, "build", str(host_src), "-file",
                        "-debug", f"-out:{host}"], cwd=ROOT, check=True)


def clean():
    if (ROOT / "build").exists():
        shutil.rmtree(ROOT / "build")


CMDS = {"hot": hot, "clean": clean}
if __name__ == "__main__":
    if len(sys.argv) != 2 or sys.argv[1] not in CMDS:
        sys.exit("usage: build.py {hot|clean}")
    CMDS[sys.argv[1]]()
