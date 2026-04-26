"""local_dir fetcher: walk a local directory tree and ingest every matching file.

Usage in manifest.yaml:
    fetcher: local_dir
    source_path: ${ODIN_ROOT}/core    # ${VAR} expanded from os.environ
    destination: odin-core
    extras:
      include_glob: "**/*.odin"       # default: **/*.odin
      max_files: 5000                 # default: unlimited
      max_bytes_per_file: 524288      # default: 512 KiB; larger files skipped
"""
from __future__ import annotations

import os
from pathlib import Path

from ..manifest import Source
from . import FetchedFile

DEFAULT_GLOB = "**/*.odin"
DEFAULT_MAX_BYTES = 512 * 1024


def _expand(p: str) -> str:
    # ${VAR} or $VAR
    return os.path.expandvars(os.path.expanduser(p))


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    if not source.source_path:
        raise ValueError(f"local_dir [{source.id}] requires `source_path`")
    raw = _expand(source.source_path)
    base = Path(raw)
    if not base.is_absolute():
        base = (content_root.parent / base).resolve()
    if not base.is_dir():
        raise FileNotFoundError(f"local_dir [{source.id}]: {base} is not a directory")

    extras = source.extra or {}
    pattern = extras.get("include_glob", DEFAULT_GLOB)
    max_files = extras.get("max_files")
    max_bytes = int(extras.get("max_bytes_per_file", DEFAULT_MAX_BYTES))

    out: list[FetchedFile] = []
    for path in sorted(base.glob(pattern)):
        if not path.is_file():
            continue
        try:
            size = path.stat().st_size
        except OSError:
            continue
        if size > max_bytes:
            continue
        try:
            text = path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        rel = path.relative_to(base).as_posix()
        out.append(FetchedFile(rel_path=rel, text=text))
        if max_files is not None and len(out) >= int(max_files):
            break
    return out
