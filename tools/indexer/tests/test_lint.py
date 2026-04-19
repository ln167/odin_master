from pathlib import Path

from odin_master import lint


def _make_repo(tmp_path: Path, manifest_yaml: str, concept: str) -> Path:
    root = tmp_path / "repo"
    (root / "content" / "wiki" / "concepts").mkdir(parents=True)
    (root / "content" / "manifest.yaml").write_text(manifest_yaml, encoding="utf-8")
    (root / "content" / "wiki" / "INDEX.md").write_text("# Wiki\n\n- concepts/topic.md\n",
                                                          encoding="utf-8")
    (root / "content" / "wiki" / "concepts" / "topic.md").write_text(concept, encoding="utf-8")
    return root


def test_lint_passes_when_backlink_resolves(tmp_path):
    src_dir = tmp_path / "repo" / "content" / "sources" / "tier1-authoritative" / "demo"
    src_dir.mkdir(parents=True)
    (src_dir / "page.md").write_text("real content", encoding="utf-8")
    root = _make_repo(
        tmp_path,
        manifest_yaml="""
- id: demo
  tier: 1
  fetcher: local_file
  source_path: dummy.md
  destination: demo
""",
        concept="# Topic\n\nA fact. <!-- src: demo page.md@1 -->\n",
    )
    issues = lint.lint(root)
    assert issues == []


def test_lint_flags_unknown_source_id(tmp_path):
    root = _make_repo(
        tmp_path,
        manifest_yaml="[]\n",
        concept="# Topic\n\nA fact. <!-- src: missing-source page.md@1 -->\n",
    )
    issues = lint.lint(root)
    assert any("unknown source_id" in str(i) for i in issues)


def test_lint_flags_missing_path(tmp_path):
    root = _make_repo(
        tmp_path,
        manifest_yaml="""
- id: demo
  tier: 1
  fetcher: local_file
  source_path: dummy.md
  destination: demo
""",
        concept="# Topic\n\nA fact. <!-- src: demo nonexistent.md@1 -->\n",
    )
    issues = lint.lint(root)
    assert any("backlink path missing" in str(i) for i in issues)
