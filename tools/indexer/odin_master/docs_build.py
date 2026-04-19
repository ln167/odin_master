"""`odin-master docs build` — wraps `odin doc` for selected packages.

Default packages: tools/odin_lib/{instrument,bench,scratch}. Each is rendered to
build/docs/<pkg>/index.txt (Odin's text doc format). Skips packages that don't
exist; reports which ones built.
"""
from __future__ import annotations

import shutil
import subprocess
from dataclasses import dataclass, field
from pathlib import Path

DEFAULT_PACKAGES = (
    "tools/odin_lib/instrument",
    "tools/odin_lib/bench",
    "tools/odin_lib/scratch",
)


@dataclass
class DocsReport:
    built: list[str] = field(default_factory=list)
    skipped: list[str] = field(default_factory=list)
    out_dir: Path | None = None


def build_docs(repo_root: Path, *, packages: tuple[str, ...] | None = None) -> DocsReport:
    odin = shutil.which("odin")
    if not odin:
        raise RuntimeError("odin not on PATH")
    out_root = repo_root / "build" / "docs"
    out_root.mkdir(parents=True, exist_ok=True)
    rep = DocsReport(out_dir=out_root)
    for pkg in (packages or DEFAULT_PACKAGES):
        pkg_dir = repo_root / pkg
        if not pkg_dir.is_dir():
            rep.skipped.append(pkg)
            continue
        out_pkg = out_root / Path(pkg).name
        out_pkg.mkdir(parents=True, exist_ok=True)
        out_file = out_pkg / "index.txt"
        proc = subprocess.run(
            [odin, "doc", str(pkg_dir)],
            capture_output=True, text=True, cwd=repo_root, check=False,
        )
        if proc.returncode != 0:
            rep.skipped.append(pkg)
            continue
        out_file.write_text(proc.stdout, encoding="utf-8")
        rep.built.append(pkg)
    return rep
