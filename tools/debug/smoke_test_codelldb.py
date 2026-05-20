#!/usr/bin/env python3
"""Smoke-test codelldb end-to-end.

Launches codelldb in DAP server mode on a free port, opens a TCP connection,
sends a DAP `initialize` request, and verifies a sensible response comes back.
PASS means codelldb is alive, liblldb loaded, DAP protocol is speaking.
"""
import json
import socket
import subprocess
import sys
import time

CODELLDB = r"C:\Users\user1\odin\dist\codelldb.exe"


def dap_send(sock: socket.socket, payload: dict) -> None:
	body = json.dumps(payload).encode()
	sock.sendall(f"Content-Length: {len(body)}\r\n\r\n".encode() + body)


def dap_recv(sock: socket.socket, timeout: float = 5.0) -> dict:
	sock.settimeout(timeout)
	header = b""
	while b"\r\n\r\n" not in header:
		chunk = sock.recv(1)
		if not chunk: raise EOFError("connection closed")
		header += chunk
	length = int([h for h in header.decode().split("\r\n") if h.startswith("Content-Length:")][0].split(":")[1].strip())
	body = b""
	while len(body) < length:
		body += sock.recv(length - len(body))
	return json.loads(body)


def main() -> int:
	# Pick an open ephemeral port.
	s = socket.socket(); s.bind(("127.0.0.1", 0)); port = s.getsockname()[1]; s.close()

	proc = subprocess.Popen([CODELLDB, "--port", str(port)],
	                        stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	time.sleep(0.8)
	if proc.poll() is not None:
		out, err = proc.communicate(timeout=2)
		print(f"FAIL  codelldb died early (exit {proc.returncode})")
		print(f"  stdout: {out.decode(errors='replace').strip()}")
		print(f"  stderr: {err.decode(errors='replace').strip()}")
		return 1

	# Connect and speak DAP.
	conn = socket.create_connection(("127.0.0.1", port), timeout=5)
	dap_send(conn, {
		"seq": 1, "type": "request", "command": "initialize",
		"arguments": {
			"adapterID": "lldb", "clientID": "smoke", "clientName": "smoke",
			"locale": "en-US", "linesStartAt1": True, "columnsStartAt1": True,
			"pathFormat": "path",
		},
	})
	resp = dap_recv(conn)
	conn.close()
	proc.terminate(); proc.wait(timeout=3)

	if resp.get("success") is True and resp.get("command") == "initialize":
		caps = resp.get("body", {})
		print(f"PASS  codelldb DAP initialize succeeded")
		print(f"  capabilities returned: {len(caps)} keys (e.g. supportsConfigurationDoneRequest={caps.get('supportsConfigurationDoneRequest')})")
		return 0
	print(f"FAIL  unexpected DAP response: {json.dumps(resp)[:300]}")
	return 1


if __name__ == "__main__":
	sys.exit(main())
