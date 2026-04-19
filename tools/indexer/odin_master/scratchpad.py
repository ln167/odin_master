"""Scratchpad workflow: scaffold dated dirs under playground/scratch/, run them
through `odin run`, capture stdout, file evidence into result.md, and append a
backlink line to a wiki concept page.
"""
from __future__ import annotations

import datetime as _dt
import re
import shutil
import subprocess
from dataclasses import dataclass
from pathlib import Path

_VALID_SLUG = re.compile(r"^[a-z0-9][a-z0-9_-]{0,63}$")
_TEMPLATE = Path("playground/scratch/_template")


@dataclass
class ScratchRun:
    dir: Path
    output_path: Path
    returncode: int
    stdout: str


def _today() -> str:
    return _dt.date.today().isoformat()


def new_scratch(repo_root: Path, slug: str, *, date: str | None = None) -> Path:
    if not _VALID_SLUG.match(slug):
        raise ValueError(f"invalid slug {slug!r}: lowercase alnum + - _, max 64 chars")
    src = repo_root / _TEMPLATE
    if not src.is_dir():
        raise FileNotFoundError(f"scratch template missing: {src}")
    dst = repo_root / "playground" / "scratch" / f"{date or _today()}-{slug}"
    if dst.exists():
        raise FileExistsError(f"already exists: {dst}")
    shutil.copytree(src, dst)
    return dst


def run_scratch(scratch_dir: Path, *, odin: str = "odin") -> ScratchRun:
    main = scratch_dir / "main.odin"
    if not main.is_file():
        raise FileNotFoundError(f"no main.odin in {scratch_dir}")
    proc = subprocess.run(
        [odin, "run", ".", "-file"],
        cwd=scratch_dir, capture_output=True, text=True
    )
    out_path = scratch_dir / "output.txt"
    out_path.write_text(proc.stdout, encoding="utf-8")
    return ScratchRun(dir=scratch_dir, output_path=out_path,
                      returncode=proc.returncode, stdout=proc.stdout)


def file_evidence(scratch_dir: Path, *, verdict: str, summary: str,
                  backlink_target: Path | None = None) -> Path:
    if verdict not in {"confirmed", "refuted", "surprising"}:
        raise ValueError(f"verdict must be confirmed|refuted|surprising, got {verdict!r}")
    result = scratch_dir / "result.md"
    body = (f"# Result: {verdict}\n\n{summary}\n\n"
            f"See `output.txt` for raw stdout.\n")
    result.write_text(body, encoding="utf-8")
    if backlink_target is not None:
        backlink = (
            f"\n<!-- src: scratch {scratch_dir.name}/result.md -->\n"
            f"- [{verdict}] {summary} ({scratch_dir.name})\n"
        )
        with backlink_target.open("a", encoding="utf-8") as f:
            f.write(backlink)
    return result
