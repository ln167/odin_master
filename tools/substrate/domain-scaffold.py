#!/usr/bin/env python3
"""odin-master new domain <name> — scaffold a new empty-shell domain.

Copies templates/domain/ into content/domains/<name>/, creates a stub skill at
.claude/skills/<name>/SKILL.md, and appends a commented manifest entry hint.
"""
from __future__ import annotations

import argparse
import datetime as dt
import shutil
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"
SKILLS_DIR = REPO / ".claude" / "skills"
TEMPLATE = REPO / "templates" / "domain"
MANIFEST = REPO / "content" / "manifest.yaml"


def render(text: str, domain: str, scaffold_date: str) -> str:
    return (
        text
        .replace("{{domain}}", domain)
        .replace("{{scaffold-date}}", scaffold_date)
    )


def scaffold(domain: str) -> int:
    target = DOMAINS_DIR / domain
    if target.exists():
        print(f"error: {target} already exists", file=sys.stderr)
        return 1
    if not TEMPLATE.exists():
        print(f"error: template {TEMPLATE} missing", file=sys.stderr)
        return 1

    scaffold_date = dt.date.today().isoformat()

    for src in TEMPLATE.rglob("*"):
        rel = src.relative_to(TEMPLATE)
        # Strip ".template" only at the end of filenames, not as a substring.
        rel_str = str(rel)
        if rel_str.endswith(".template"):
            rel_str = rel_str[: -len(".template")]
        dst = target / rel_str
        if src.is_dir():
            dst.mkdir(parents=True, exist_ok=True)
            continue
        dst.parent.mkdir(parents=True, exist_ok=True)
        if src.suffix in (".md", ".template"):
            text = src.read_text(encoding="utf-8")
            dst.write_text(render(text, domain, scaffold_date), encoding="utf-8")
        else:
            shutil.copy2(src, dst)

    # Skill stub
    skill_dir = SKILLS_DIR / domain
    skill_dir.mkdir(parents=True, exist_ok=True)
    (skill_dir / "SKILL.md").write_text(
        f"""---
name: {domain}
description: Use when the user asks about {domain}-related questions. This domain is currently an empty shell. Defer to `knowledge-substrate-core` for workflow orchestration once populated.
---

# {domain.capitalize()} — Domain Skill (empty shell)

This domain is an **empty shell**. Scaffolded {scaffold_date} via `odin-master new domain {domain}`.

## Domain pointer

- Domain root: `content/domains/{domain}/`
- Tier semantics: `content/domains/{domain}/source/README.md` (please fill in)

## To populate

1. Edit `content/domains/{domain}/source/README.md` to fill in tier semantics + description.
2. Add manifest entries with `domain: {domain}` (see `content/manifest.yaml`).
3. Run `odin-master update --domain {domain}`.
4. Compile via this skill (which routes to `knowledge-substrate-core`).
""",
        encoding="utf-8",
    )

    # Append commented manifest hint
    if MANIFEST.exists():
        with MANIFEST.open("a", encoding="utf-8") as f:
            f.write(
                f"\n# ── {domain} domain — uncomment + populate when ready ──\n"
                f"# - id: {domain}-example\n"
                f"#   tier: 1\n"
                f"#   domain: {domain}\n"
                f"#   fetcher: html_mirror\n"
                f"#   url: https://example.com/{domain}\n"
                f"#   destination: {domain}-example\n"
                f"#   processor: html-to-markdown\n"
            )

    print(f"created domain '{domain}'")
    print(f"  - content/domains/{domain}/")
    print(f"  - .claude/skills/{domain}/SKILL.md")
    print(f"  - manifest hint appended to content/manifest.yaml")
    print()
    print("Next steps:")
    print(f"  1. Edit content/domains/{domain}/source/README.md")
    print(f"  2. Add real manifest entries with `domain: {domain}`")
    print(f"  3. Run: odin-master update --domain {domain}")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    sub = ap.add_subparsers(dest="cmd", required=True)
    new = sub.add_parser("new")
    new.add_argument("kind", choices=["domain"])
    new.add_argument("name")
    args = ap.parse_args()
    if args.cmd == "new" and args.kind == "domain":
        return scaffold(args.name)
    ap.error("unknown command")
    return 2


if __name__ == "__main__":
    sys.exit(main())
