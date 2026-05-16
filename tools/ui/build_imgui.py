#!/usr/bin/env python3
"""Build the Dear ImGui static library for the current OS via Capati/odin-imgui.

One-time per machine. Downloads premake5 if not present, runs premake to
generate platform build files, then compiles. Output lib lives in
vendor/odin-imgui/imgui_<os>_<arch>.lib (or .a on Unix). Gitignored.

Backends compiled in: sdl3, sdlgpu3 (matches docs/design/ui-strategy.md).
"""
import os
import platform
import shutil
import subprocess
import sys
import urllib.request
import zipfile
import tarfile
import io
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
VENDOR = REPO / "tools" / "domains" / "odin" / "odin_lib" / "vendor" / "odin-imgui"
PREMAKE_VERSION = "5.0.0-beta8"
BACKENDS = "sdl3,sdlgpu3"


def premake_url() -> tuple[str, str]:
	base = f"https://github.com/premake/premake-core/releases/download/v{PREMAKE_VERSION}"
	s = platform.system()
	if s == "Windows": return f"{base}/premake-{PREMAKE_VERSION}-windows.zip", "premake5.exe"
	if s == "Linux":   return f"{base}/premake-{PREMAKE_VERSION}-linux.tar.gz", "premake5"
	if s == "Darwin":  return f"{base}/premake-{PREMAKE_VERSION}-macosx.tar.gz", "premake5"
	raise SystemExit(f"unsupported OS: {s}")


def fetch_premake() -> Path:
	target = VENDOR / ("premake5.exe" if platform.system() == "Windows" else "premake5")
	if target.exists(): return target
	url, name = premake_url()
	print(f"Downloading {url}")
	with urllib.request.urlopen(url) as r: data = r.read()
	if url.endswith(".zip"):
		with zipfile.ZipFile(io.BytesIO(data)) as z: z.extract(name, VENDOR)
	else:
		with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as t: t.extract(name, VENDOR)
	target.chmod(0o755)
	print(f"Installed {target}")
	return target


def windows(premake: Path) -> int:
	# Premake's lua checks for `python3 --version`; Windows ships `python` not
	# `python3` (the bare `python3.exe` on PATH is a MS-Store stub that errors).
	# Shim with a batch forwarder so premake's venv setup works against the
	# real interpreter (including its stdlib + ensurepip).
	shim = VENDOR / "python3.bat"
	shim.write_text(f'@echo off\n"{sys.executable}" %*\n')

	# Premake's generated build.bat calls `vcvars64.bat` with no path; locate
	# it via vswhere and prepend its dir to PATH for the subprocesses.
	vswhere = Path(r"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe")
	vs_install = subprocess.run([str(vswhere), "-latest", "-property", "installationPath"],
	                            capture_output=True, text=True, check=True).stdout.strip()
	vcvars_dir = str(Path(vs_install) / "VC" / "Auxiliary" / "Build")

	env = os.environ.copy()
	env["PATH"] = str(VENDOR) + os.pathsep + vcvars_dir + os.pathsep + env["PATH"]
	subprocess.run([str(premake), f"--backends={BACKENDS}", "vs2022"], cwd=VENDOR, env=env, check=True)
	build_bat = VENDOR / "build" / "build.bat"
	return subprocess.run(["cmd", "/c", str(build_bat)], cwd=build_bat.parent, env=env).returncode


def unix(premake: Path) -> int:
	subprocess.run([str(premake), f"--backends={BACKENDS}", "gmake2"], cwd=VENDOR, check=True)
	subdir = "linux" if platform.system() == "Linux" else "macosx"
	arch = "arm64" if platform.machine() in ("arm64", "aarch64") else "x86_64"
	return subprocess.run(["make", f"config=release_{arch}"], cwd=VENDOR / "build" / "make" / subdir).returncode


def main() -> int:
	if not VENDOR.exists():
		print(f"vendor missing: {VENDOR}", file=sys.stderr)
		print("Run: git clone --depth 1 --recurse-submodules https://github.com/Capati/odin-imgui.git " + str(VENDOR), file=sys.stderr)
		return 1
	premake = fetch_premake()
	s = platform.system()
	if s == "Windows": return windows(premake)
	return unix(premake)


if __name__ == "__main__":
	sys.exit(main())
