import http.server
import socket
import threading
from pathlib import Path

import pytest

from odin_master.ingestors import html_mirror
from odin_master.manifest import Source


PAGES = {
    "/": "<html><body><h1>Root</h1>"
          "<a href='/a.html'>A</a> <a href='/b.html'>B</a>"
          "<a href='https://example.invalid/x'>off-site</a></body></html>",
    "/a.html": "<html><body><h1>A</h1><a href='/c.html'>C</a></body></html>",
    "/b.html": "<html><body><h1>B</h1></body></html>",
    "/c.html": "<html><body><h1>C</h1></body></html>",
}


class _Handler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        body = PAGES.get(self.path)
        if body is None:
            self.send_response(404); self.end_headers(); return
        self.send_response(200)
        self.send_header("Content-Type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(body.encode("utf-8"))

    def log_message(self, *_):
        pass


@pytest.fixture
def server():
    s = socket.socket(); s.bind(("127.0.0.1", 0)); port = s.getsockname()[1]; s.close()
    httpd = http.server.HTTPServer(("127.0.0.1", port), _Handler)
    th = threading.Thread(target=httpd.serve_forever, daemon=True)
    th.start()
    yield f"http://127.0.0.1:{port}"
    httpd.shutdown()


def test_single_page_default(server, tmp_path: Path):
    src = Source(id="s", tier=1, fetcher="html_mirror", destination="d",
                 url=f"{server}/a.html")
    out = html_mirror.fetch(src, tmp_path)
    assert len(out) == 1
    files = list((tmp_path / "sources" / "tier1-authoritative" / "d").glob("*.md"))
    assert len(files) == 1
    assert "A" in files[0].read_text(encoding="utf-8")


def test_recursive_mirror_same_origin(server, tmp_path: Path):
    src = Source(id="s", tier=1, fetcher="html_mirror", destination="d",
                 url=f"{server}/", extra={"mirror": True, "max_depth": 2, "max_pages": 10})
    out = html_mirror.fetch(src, tmp_path)
    md_dir = tmp_path / "sources" / "tier1-authoritative" / "d"
    written = sorted(p.name for p in md_dir.glob("*.md"))
    # Root + a + b + c reached at depth 2.
    assert "a.md" in written
    assert "b.md" in written
    assert "c.md" in written
    assert len(out) >= 4
    # Off-site link must not have been followed.
    assert not any("example.invalid" in p for p in (str(p) for p in md_dir.glob("*")))


def test_max_pages_caps(server, tmp_path: Path):
    src = Source(id="s", tier=1, fetcher="html_mirror", destination="d",
                 url=f"{server}/", extra={"mirror": True, "max_depth": 5, "max_pages": 2})
    out = html_mirror.fetch(src, tmp_path)
    assert len(out) == 2
