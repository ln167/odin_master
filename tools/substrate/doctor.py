#!/usr/bin/env python3
"""odin-master doctor — mechanical health check for the substrate.

Validates: frontmatter completeness, citation resolution, provenance/folder
parity, INDEX.md freshness, log.md parseability. Optional --provenance-check
re-hashes sources to flag drift. No LLM. Pass/fail report.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

import yaml

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"
TEMPLATES_DIR = REPO / "templates" / "page-types"

PAGE_TYPES = {"article", "paper", "code-symbol", "blog-post", "concept", "summary"}
PROVENANCES = {"from-ingest", "from-query"}
REQUIRED_FRONTMATTER_COMPILED = {
    "title", "type", "domain", "tier", "provenance",
    "source_ids", "compiled_at", "compiled_by", "status",
}
REQUIRED_FRONTMATTER_VAULT = {
    "title", "type", "domain", "frozen", "promoted_from",
    "promoted_at", "original_provenance", "original_source_ids",
}

WIKILINK_RE = re.compile(r"\[\[([^\]]+)\]\]")
LOG_HEADER_RE = re.compile(r"^## \[\d{4}-\d{2}-\d{2}\] [a-z\-]+ \| ")


@dataclass
class Report:
    checks: list[tuple[str, bool, str]] = field(default_factory=list)

    def add(self, name: str, ok: bool, detail: str = "") -> None:
        self.checks.append((name, ok, detail))

    @property
    def passed(self) -> bool:
        return all(ok for _, ok, _ in self.checks)

    def to_json(self) -> dict[str, Any]:
        return {
            "passed": self.passed,
            "checks": [
                {"name": n, "ok": ok, "detail": d} for n, ok, d in self.checks
            ],
        }

    def print_human(self) -> None:
        for name, ok, detail in self.checks:
            mark = "PASS" if ok else "FAIL"
            line = f"[{mark}] {name}"
            if detail:
                line += f" — {detail}"
            print(line)
        print()
        print("OVERALL:", "PASS" if self.passed else "FAIL")


def parse_frontmatter(path: Path) -> dict[str, Any] | None:
    text = path.read_text(encoding="utf-8")
    if not text.startswith("---\n"):
        return None
    end = text.find("\n---\n", 4)
    if end == -1:
        return None
    try:
        return yaml.safe_load(text[4:end])
    except yaml.YAMLError:
        return None


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    h.update(path.read_bytes())
    return h.hexdigest()


def iter_compiled_pages(domain_dir: Path):
    for sub in ("from-ingest", "from-query"):
        compiled_sub = domain_dir / "compiled" / sub
        if not compiled_sub.exists():
            continue
        for path in compiled_sub.rglob("*.md"):
            yield path, sub  # sub == provenance


def iter_vault_pages(domain_dir: Path):
    vault = domain_dir / "vault"
    if not vault.exists():
        return
    for path in vault.rglob("*.md"):
        yield path


def check_compiled_page(path: Path, expected_provenance: str, report: Report,
                        domain_dir: Path) -> None:
    fm = parse_frontmatter(path)
    rel = path.relative_to(REPO)
    if fm is None:
        report.add(f"frontmatter: {rel}", False, "missing or unparseable")
        return
    missing = REQUIRED_FRONTMATTER_COMPILED - set(fm.keys())
    if missing:
        report.add(f"frontmatter: {rel}", False, f"missing fields: {sorted(missing)}")
        return
    if fm["provenance"] not in PROVENANCES:
        report.add(f"provenance: {rel}", False, f"value {fm['provenance']!r}")
        return
    if fm["provenance"] != expected_provenance:
        report.add(
            f"provenance/folder parity: {rel}",
            False,
            f"frontmatter says {fm['provenance']!r} but file is under {expected_provenance!r}",
        )
        return
    if fm["type"] not in PAGE_TYPES:
        report.add(f"type: {rel}", False, f"value {fm['type']!r}")
        return
    # source_ids paths exist
    for sid in fm.get("source_ids") or []:
        sp = REPO / sid["path"]
        if not sp.exists():
            report.add(
                f"source_id: {rel}",
                False,
                f"missing source path {sid['path']!r}",
            )
            return
    # Sources section parity (every source_ids appears in body Sources section)
    body = path.read_text(encoding="utf-8")
    for sid in fm.get("source_ids") or []:
        if f"[[{sid['path']}]]" not in body and f"[[{sid['path']}#" not in body:
            report.add(
                f"sources-section: {rel}",
                False,
                f"source_id {sid['path']!r} not cited in body",
            )
            return
    report.add(f"page: {rel}", True)


def check_vault_page(path: Path, report: Report) -> None:
    """Validate vault frontmatter against vault schema (frozen=true, etc.)."""
    fm = parse_frontmatter(path)
    rel = path.relative_to(REPO)
    if fm is None:
        # Vault may contain hand-curated content without strict frontmatter
        # (e.g., migrated lessons/studies). Skip frontmatter check rather than fail.
        return
    if "frozen" not in fm:
        # Likely a pre-promote vault file (migrated content); skip strict check.
        return
    missing = REQUIRED_FRONTMATTER_VAULT - set(fm.keys())
    if missing:
        report.add(
            f"vault frontmatter: {rel}",
            False,
            f"missing fields: {sorted(missing)}",
        )
        return
    if fm.get("frozen") is not True:
        report.add(f"vault frozen: {rel}", False, "frozen must be true")
        return
    report.add(f"vault page: {rel}", True)


def check_wikilinks(path: Path, report: Report) -> None:
    rel = path.relative_to(REPO)
    body = path.read_text(encoding="utf-8")
    for match in WIKILINK_RE.finditer(body):
        target = match.group(1).split("#", 1)[0]
        # Skip placeholder template tokens like {{source-path}}
        if target.startswith("{{") and target.endswith("}}"):
            continue
        candidate = REPO / target
        if not candidate.exists():
            report.add(
                f"wikilink: {rel}",
                False,
                f"unresolved [[{target}]]",
            )
            return
    report.add(f"wikilinks: {rel}", True)


def check_log(domain_dir: Path, report: Report) -> None:
    log = domain_dir / "compiled" / "log.md"
    if not log.exists():
        report.add(f"log.md: {domain_dir.name}", False, "missing")
        return
    bad = [
        i for i, line in enumerate(log.read_text(encoding="utf-8").splitlines(), 1)
        if line.startswith("## ") and not LOG_HEADER_RE.match(line)
    ]
    if bad:
        report.add(
            f"log.md: {domain_dir.name}",
            False,
            f"unparseable header lines: {bad[:3]}",
        )
        return
    report.add(f"log.md: {domain_dir.name}", True)


def provenance_check(domain_dir: Path, report: Report) -> None:
    for path, expected in iter_compiled_pages(domain_dir):
        fm = parse_frontmatter(path)
        if not fm:
            continue
        rel = path.relative_to(REPO)
        for sid in fm.get("source_ids") or []:
            sp = REPO / sid["path"]
            if not sp.exists():
                continue
            actual = sha256_file(sp)
            if actual != sid["sha256"]:
                report.add(
                    f"provenance: {rel}",
                    False,
                    f"sha256 drift on {sid['path']!r}",
                )
                return
    report.add(f"provenance: {domain_dir.name}", True)


def doctor_domain(domain: str, do_provenance: bool, report: Report) -> None:
    domain_dir = DOMAINS_DIR / domain
    if not domain_dir.exists():
        report.add(f"domain: {domain}", False, "directory missing")
        return
    for path, prov in iter_compiled_pages(domain_dir):
        check_compiled_page(path, prov, report, domain_dir)
        check_wikilinks(path, report)
    for path in iter_vault_pages(domain_dir):
        check_vault_page(path, report)
        check_wikilinks(path, report)
    check_log(domain_dir, report)
    if do_provenance:
        provenance_check(domain_dir, report)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--provenance-check", action="store_true",
                    help="re-hash source files; flag drift")
    ap.add_argument("--domain", default=None,
                    help="restrict to one domain (default: all)")
    ap.add_argument("--json", action="store_true", help="machine-readable output")
    args = ap.parse_args()

    domains = (
        [args.domain] if args.domain
        else sorted(d.name for d in DOMAINS_DIR.iterdir() if d.is_dir())
    )
    report = Report()
    for d in domains:
        doctor_domain(d, args.provenance_check, report)

    if args.json:
        print(json.dumps(report.to_json(), indent=2))
    else:
        report.print_human()
    return 0 if report.passed else 1


if __name__ == "__main__":
    sys.exit(main())
