from __future__ import annotations

from odin_master import bootstrap_corpus


def _make_min_repo(root):
    (root / "content").mkdir(parents=True)
    (root / "content" / "manifest.yaml").write_text("[]\n", encoding="utf-8")
    (root / "content" / "wiki" / "concepts").mkdir(parents=True)
    (root / "content" / "wiki" / "INDEX.md").write_text("# Wiki\n", encoding="utf-8")
    return root


def test_bootstrap_corpus_runs_end_to_end_on_empty_manifest(tmp_path, monkeypatch):
    monkeypatch.setenv("ODIN_MASTER_FAKE_EMBEDDINGS", "1")
    repo = _make_min_repo(tmp_path)
    rep = bootstrap_corpus.bootstrap(repo, allow_fake_embeddings=True)
    assert rep.chunks_inserted == 0
    assert rep.lint_issues == 0
    assert rep.quality_pass == 0 and rep.quality_fail == 0
