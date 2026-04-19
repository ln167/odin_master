"""Snapshot a search query into content/outputs/YYYY-MM-DD-<topic>/digest.md."""
from __future__ import annotations

import datetime as dt
import json
import re
import shutil
import subprocess
from dataclasses import dataclass
from pathlib import Path


@dataclass
class PublishReport:
    topic: str
    out_path: Path
    n_results: int


def _slug(s: str) -> str:
    s = re.sub(r"[^a-z0-9]+", "-", s.lower()).strip("-")
    return s or "topic"


def _snippet(repo_root: Path, rel_path: str, length: int = 400) -> str:
    p = repo_root / rel_path
    if not p.is_file():
        return "(file missing)"
    try:
        text = p.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return "(unreadable)"
    text = text.strip().replace("\r\n", "\n")
    return text[:length] + ("..." if len(text) > length else "")


def publish(
    repo_root: Path,
    topic: str,
    *,
    search_bin: str | None = None,
    top: int = 10,
    today: dt.date | None = None,
) -> PublishReport:
    bin_ = search_bin or shutil.which("odin-search")
    if not bin_:
        raise RuntimeError("odin-search binary not found — `cargo install --path tools/search`")
    proc = subprocess.run(
        [bin_, "--json", "--top", str(top), topic],
        capture_output=True, check=False, cwd=repo_root,
    )
    if proc.returncode != 0:
        err = (proc.stderr or proc.stdout).decode("utf-8", errors="replace").strip()
        raise RuntimeError(f"odin-search failed: {err}")
    payload = json.loads(proc.stdout.decode("utf-8", errors="replace") or "{}")
    results = payload.get("results", [])

    day = today or dt.date.today()
    out_dir = repo_root / "content" / "outputs" / f"{day.isoformat()}-{_slug(topic)}"
    out_dir.mkdir(parents=True, exist_ok=True)

    lines = [
        f"# {topic}",
        "",
        f"_Snapshot of `odin-search --top {top}` on {day.isoformat()}._",
        "",
    ]
    for i, r in enumerate(results, 1):
        path = r.get("path", "?")
        sid = r.get("source_id", "?")
        tier = r.get("tier", "?")
        score = r.get("score") or r.get("rrf_score") or ""
        lines += [
            f"## {i}. {path}",
            f"_source: {sid} (tier {tier})_  {score}",
            "",
            _snippet(repo_root, path),
            "",
        ]
    out_path = out_dir / "digest.md"
    out_path.write_text("\n".join(lines), encoding="utf-8")
    return PublishReport(topic=topic, out_path=out_path, n_results=len(results))
