#!/usr/bin/env python3
"""odin-master promote — move a compiled page into the vault.

Refuses to promote if doctor fails on the file's domain. Rewrites frontmatter to
the vault schema (frozen: true, promoted_from, original_provenance, etc.),
updates INDEX.md, and rewrites links in remaining compiled/ pages.
"""
from __future__ import annotations

import argparse
import datetime as dt
import subprocess
import sys
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"


def split_frontmatter(text: str) -> tuple[dict, str]:
    if not text.startswith("---\n"):
        raise ValueError("missing frontmatter")
    end = text.find("\n---\n", 4)
    if end == -1:
        raise ValueError("unterminated frontmatter")
    fm = yaml.safe_load(text[4:end])
    body = text[end + 5 :]
    return fm, body


def join_frontmatter(fm: dict, body: str) -> str:
    yml = yaml.safe_dump(fm, sort_keys=False).strip()
    return f"---\n{yml}\n---\n{body}"


def run_doctor(path: Path) -> bool:
    """Returns True if the (whole-domain) substrate passes doctor; False otherwise."""
    domain = path.relative_to(DOMAINS_DIR).parts[0]
    proc = subprocess.run(
        [sys.executable, str(REPO / "tools" / "substrate" / "doctor.py"),
         "--domain", domain, "--json"],
        capture_output=True, text=True,
    )
    return proc.returncode == 0


def promote(compiled_path: Path, note: str | None, dry_run: bool) -> int:
    if not compiled_path.is_file():
        print(f"error: {compiled_path} is not a file", file=sys.stderr)
        return 1
    try:
        rel = compiled_path.relative_to(REPO)
    except ValueError:
        print(f"error: {compiled_path} is outside the repo", file=sys.stderr)
        return 1
    parts = rel.parts
    if "compiled" not in parts:
        print(f"error: {rel} not under a compiled/ directory", file=sys.stderr)
        return 1
    # Expect: content/domains/<d>/compiled/from-<x>/<type>/<name>.md
    try:
        compiled_idx = parts.index("compiled")
        prov_folder = parts[compiled_idx + 1]
    except (ValueError, IndexError):
        print(f"error: {rel} has unexpected structure", file=sys.stderr)
        return 1
    if prov_folder not in ("from-ingest", "from-query"):
        print(f"error: {rel} not under from-ingest/ or from-query/", file=sys.stderr)
        return 1

    if not run_doctor(compiled_path):
        print("error: doctor failed; refusing to promote a broken page",
              file=sys.stderr)
        return 1

    text = compiled_path.read_text(encoding="utf-8")
    fm, body = split_frontmatter(text)

    domain_dir = DOMAINS_DIR / fm["domain"]
    page_type = fm["type"]
    vault_dir = domain_dir / "vault" / page_type
    vault_path = vault_dir / compiled_path.name

    new_fm = {
        "title": fm["title"],
        "type": fm["type"],
        "domain": fm["domain"],
        "frozen": True,
        "promoted_from": str(rel).replace("\\", "/"),
        "promoted_at": dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds"),
        "original_compiled_at": fm.get("compiled_at"),
        "original_provenance": fm["provenance"],
        "original_source_ids": fm.get("source_ids", []),
    }
    if note:
        new_fm["blessed_because"] = note

    new_text = join_frontmatter(new_fm, body)

    if dry_run:
        print(f"[dry-run] would create: {vault_path}")
        print(f"[dry-run] would delete: {compiled_path}")
        print("[dry-run] new frontmatter:")
        print(yaml.safe_dump(new_fm, sort_keys=False))
        return 0

    vault_dir.mkdir(parents=True, exist_ok=True)
    vault_path.write_text(new_text, encoding="utf-8")
    compiled_path.unlink()

    # Rewrite links in remaining compiled/ pages
    old_link = str(rel).replace("\\", "/")
    new_link = str(vault_path.relative_to(REPO)).replace("\\", "/")
    for sub in ("from-ingest", "from-query"):
        sub_dir = domain_dir / "compiled" / sub
        if not sub_dir.exists():
            continue
        for path in sub_dir.rglob("*.md"):
            content = path.read_text(encoding="utf-8")
            if old_link in content:
                path.write_text(content.replace(old_link, new_link), encoding="utf-8")

    # Update INDEX.md (best-effort: replaces link in place; next Compile rewrites it cleanly)
    index_path = domain_dir / "compiled" / "INDEX.md"
    if index_path.exists():
        idx = index_path.read_text(encoding="utf-8")
        idx = idx.replace(old_link, new_link)
        index_path.write_text(idx, encoding="utf-8")

    # Append to log.md
    log_path = domain_dir / "compiled" / "log.md"
    today = dt.date.today().isoformat()
    log_path.write_text(
        log_path.read_text(encoding="utf-8")
        + f"\n## [{today}] promote | {old_link} → vault/\n",
        encoding="utf-8",
    )

    print(f"promoted: {old_link} → {new_link}")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("path", help="compiled page to promote (relative or absolute)")
    ap.add_argument("--note", default=None, help="blessing note (frontmatter)")
    ap.add_argument("--dry-run", action="store_true",
                    help="show changes without applying")
    args = ap.parse_args()

    p = Path(args.path)
    if not p.is_absolute():
        p = REPO / p
    return promote(p, args.note, args.dry_run)


if __name__ == "__main__":
    sys.exit(main())
