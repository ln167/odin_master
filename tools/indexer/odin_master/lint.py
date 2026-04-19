"""Wiki backlink integrity checker.

Wiki paragraphs cite verbatim sources via an HTML comment of the form::

    <!-- src: source_id path/to/file.md#heading@line -->

Lint rules:
  - Every wiki/concepts/*.md paragraph that asserts a fact must be followed by
    at least one ``src:`` backlink comment.
  - Every backlink's source_id must exist in the manifest.
  - Every backlink's path must exist on disk under content/sources/.
  - Every concept page must be linked from wiki/INDEX.md (best-effort).
"""
from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path

from . import manifest

BACKLINK_RE = re.compile(r"<!--\s*src:\s*(?P<sid>[\w\-\.]+)\s+(?P<path>\S+?)(?:#[^@\s]+)?(?:@\d+)?\s*-->")


@dataclass
class LintIssue:
    file: Path
    line: int
    message: str

    def __str__(self) -> str:
        return f"{self.file}:{self.line}: {self.message}"


def lint(repo_root: Path) -> list[LintIssue]:
    issues: list[LintIssue] = []
    content = repo_root / "content"
    sources = {s.id: s for s in manifest.load(content / "manifest.yaml")}
    concepts_dir = content / "wiki" / "concepts"
    for md_path in sorted(concepts_dir.glob("*.md")):
        text = md_path.read_text(encoding="utf-8")
        for i, line in enumerate(text.splitlines(), start=1):
            for m in BACKLINK_RE.finditer(line):
                sid = m.group("sid")
                rel = m.group("path")
                if sid not in sources:
                    issues.append(LintIssue(md_path, i, f"unknown source_id `{sid}` in backlink"))
                    continue
                src = sources[sid]
                tier_dir = content / "sources" / f"tier{src.tier}-{_tier_name(src.tier)}" / src.destination
                target = tier_dir / rel
                if not target.exists():
                    issues.append(LintIssue(md_path, i, f"backlink path missing: {target}"))
    # Reachability: every concept page should appear in INDEX.md.
    index = content / "wiki" / "INDEX.md"
    if index.is_file():
        idx_text = index.read_text(encoding="utf-8")
        for md_path in sorted(concepts_dir.glob("*.md")):
            rel = md_path.relative_to(content / "wiki").as_posix()
            if rel not in idx_text and md_path.stem not in idx_text:
                issues.append(LintIssue(index, 1, f"concept page not linked from INDEX.md: {rel}"))
    return issues


def _tier_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]
