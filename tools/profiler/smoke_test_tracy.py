#!/usr/bin/env python3
"""Tracy smoke test.

Builds the instrumented sleeper at _smoke_tracy/, runs it in the background,
and probes TCP port 8086 (Tracy's default client broadcast port) to confirm
the Tracy backend is alive. PASS = port accepts a connection during the
binary's lifetime. FAIL = port unreachable or binary crashed.

This does NOT validate the full Tracy protocol; it validates that the
instrument package -> tracy.lib chain is initialized and listening.
"""
import socket
import subprocess
import sys
import time
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SMOKE = REPO / "tools" / "profiler" / "_smoke_tracy"
LIB = REPO / "tools" / "domains" / "odin" / "odin_lib"
TRACY_PORT = 8086


def main() -> int:
	# Build the instrumented binary.
	exe = SMOKE / ".tracy_smoke.exe"
	build = subprocess.run(
		["odin", "build", ".",
		 f"-collection:odin_lib={LIB}",
		 "-define:INSTRUMENT=tracy",
		 f"-out:{exe.name}",
		 "-o:speed"],
		cwd=SMOKE, capture_output=True, text=True,
	)
	if build.returncode != 0:
		print("BUILD FAILED")
		print(build.stderr)
		return 1
	print(f"built {exe.name}")

	# Launch in background.
	proc = subprocess.Popen([str(exe)], cwd=SMOKE,
	                        stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	time.sleep(0.5)  # let Tracy init

	# Probe the port.
	connected = False
	for attempt in range(10):
		try:
			s = socket.create_connection(("127.0.0.1", TRACY_PORT), timeout=0.5)
			s.close()
			connected = True
			print(f"PASS  TCP {TRACY_PORT} accepting connections (attempt {attempt+1})")
			break
		except (ConnectionRefusedError, socket.timeout, OSError):
			time.sleep(0.2)

	if not connected:
		print(f"FAIL  TCP {TRACY_PORT} unreachable after 10 attempts")
		proc.terminate()
		return 1

	# Let the binary finish its 6 zones.
	out, err = proc.communicate(timeout=10)
	print(f"binary exit: {proc.returncode}")
	print(out.decode(errors='replace').strip())
	if err: print("STDERR:", err.decode(errors='replace').strip())
	return 0 if proc.returncode == 0 else 1


if __name__ == "__main__":
	sys.exit(main())
