"""One-shot orchestrator: chain update -> reindex -> lint -> quality_check."""
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from . import lint as lint_mod
from . import pipeline, quality_check


@dataclass
class BootstrapReport:
    chunks_inserted: int
    vectors_written: int
    lint_issues: int
    quality_pass: int
    quality_fail: int


def bootstrap(repo_root: Path, *, allow_fake_embeddings: bool = False,
              quality_yaml: Path | None = None,
              search_bin: str | None = None) -> BootstrapReport:
    stats = pipeline.reindex(repo_root, allow_fake_embeddings=allow_fake_embeddings)
    issues = lint_mod.lint(repo_root)
    qpass = qfail = 0
    qfile = quality_yaml or (repo_root / "content" / "quality-checks.yaml")
    if qfile.is_file() and search_bin is not None:
        checks = quality_check.load(qfile)
        for r in quality_check.run(checks, search_bin=search_bin):
            if r.passed: qpass += 1
            else: qfail += 1
    return BootstrapReport(
        chunks_inserted=stats.chunks_inserted,
        vectors_written=stats.vectors_written,
        lint_issues=len(issues),
        quality_pass=qpass,
        quality_fail=qfail,
    )
