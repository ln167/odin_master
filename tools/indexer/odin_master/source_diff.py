"""Content-hash diff for fetched source mirrors.

Usage: run `odin-master source-diff` after a refresh to see which pages under
content/sources/ changed since the previous snapshot. Safe to run anytime:
no network, no side effects until you pass --save.
"""
from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass, field
from pathlib import Path

STATE_FILENAME = ".fetch-state.json"


@dataclass
class DiffReport:
    added: list[str] = field(default_factory=list)
    modified: list[str] = field(default_factory=list)
    removed: list[str] = field(default_factory=list)
    unchanged_count: int = 0

    @property
    def has_changes(self) -> bool:
        return bool(self.added or self.modified or self.removed)


def _hash(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(65536), b""):
            h.update(block)
    return h.hexdigest()


def snapshot(root: Path) -> dict[str, str]:
    """Return {posix_rel_path: sha256} for every regular file under root.

    Excludes the state file itself and any dotfiles (e.g. `.git/` in vendored repos).
    """
    out: dict[str, str] = {}
    for p in sorted(root.rglob("*")):
        if not p.is_file():
            continue
        if p.name == STATE_FILENAME:
            continue
        rel = p.relative_to(root).as_posix()
        if any(part.startswith(".") for part in rel.split("/")):
            continue
        out[rel] = _hash(p)
    return out


def diff(before: dict[str, str], after: dict[str, str]) -> DiffReport:
    r = DiffReport()
    before_keys = set(before)
    after_keys = set(after)
    for k in sorted(after_keys - before_keys):
        r.added.append(k)
    for k in sorted(before_keys - after_keys):
        r.removed.append(k)
    for k in sorted(before_keys & after_keys):
        if before[k] == after[k]:
            r.unchanged_count += 1
        else:
            r.modified.append(k)
    return r


def load_state(state_path: Path) -> dict[str, str]:
    if not state_path.is_file():
        return {}
    return json.loads(state_path.read_text(encoding="utf-8"))


def save_state(state_path: Path, state: dict[str, str]) -> None:
    state_path.write_text(
        json.dumps(state, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def format_report(r: DiffReport, *, sources_root: Path) -> str:
    lines = []
    if not r.has_changes:
        lines.append(f"source-diff: no changes ({r.unchanged_count} files unchanged)")
        return "\n".join(lines)
    lines.append(
        f"source-diff: {len(r.added)} added, {len(r.modified)} modified, "
        f"{len(r.removed)} removed, {r.unchanged_count} unchanged"
    )
    for label, items in (("+ added", r.added), ("~ modified", r.modified), ("- removed", r.removed)):
        if not items:
            continue
        lines.append("")
        lines.append(label)
        for item in items:
            lines.append(f"  {item}")
    lines.append("")
    lines.append(f"(paths relative to {sources_root.as_posix()})")
    return "\n".join(lines)
