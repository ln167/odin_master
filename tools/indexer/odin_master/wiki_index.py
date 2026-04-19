"""Regenerate content/wiki/INDEX.md by globbing concepts/ and summaries/.

Reads the first `# H1` line from each markdown file. Writes a sorted table.
"""
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path


@dataclass
class WikiEntry:
    rel_path: str
    title: str


def _first_h1(p: Path) -> str:
    for line in p.read_text(encoding="utf-8").splitlines():
        s = line.strip()
        if s.startswith("# "):
            return s[2:].strip()
    return p.stem


def collect(repo_root: Path) -> list[WikiEntry]:
    wiki = repo_root / "content" / "wiki"
    out: list[WikiEntry] = []
    for sub in ("concepts", "summaries"):
        d = wiki / sub
        if not d.is_dir():
            continue
        for p in sorted(d.glob("*.md")):
            out.append(WikiEntry(rel_path=f"{sub}/{p.name}", title=_first_h1(p)))
    return out


def render(entries: list[WikiEntry]) -> str:
    lines = ["# Wiki", ""]
    if not entries:
        lines.append("_(no concepts yet — run `odin-master summarize <source>`)_")
        lines.append("")
        return "\n".join(lines)
    lines += ["| Title | Path |", "|---|---|"]
    for e in entries:
        lines.append(f"| {e.title} | [{e.rel_path}]({e.rel_path}) |")
    lines.append("")
    return "\n".join(lines)


def regenerate(repo_root: Path) -> Path:
    entries = collect(repo_root)
    out_path = repo_root / "content" / "wiki" / "INDEX.md"
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(render(entries), encoding="utf-8")
    return out_path
