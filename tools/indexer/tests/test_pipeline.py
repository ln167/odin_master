"""End-to-end pipeline test against a fixture manifest with local_file sources."""
from pathlib import Path

import pytest

from odin_master import pipeline, store


@pytest.fixture
def fixture_repo(tmp_path, monkeypatch):
    """Build a tiny repo with content/manifest.yaml + two local markdown sources."""
    monkeypatch.setenv("ODIN_MASTER_FAKE_EMBEDDINGS", "1")
    root = tmp_path / "repo"
    (root / "content" / "sources" / "tier1-authoritative" / "alpha").mkdir(parents=True)
    src_a = root / "content" / "sources" / "tier1-authoritative" / "alpha" / "alpha.md"
    src_a.write_text("# Alpha\n\nFirst section.\n\n## Sub\n\nSecond section about ferrets.\n", encoding="utf-8")
    src_b = root / "content" / "sources" / "tier2-curated" / "beta" / "beta.md"
    src_b.parent.mkdir(parents=True)
    src_b.write_text("# Beta\n\nDocs about Odin context allocator.\n", encoding="utf-8")
    (root / "content" / "manifest.yaml").write_text(f"""
- id: alpha
  tier: 1
  fetcher: local_file
  source_path: {src_a.relative_to(root).as_posix()}
  destination: alpha
- id: beta
  tier: 2
  fetcher: local_file
  source_path: {src_b.relative_to(root).as_posix()}
  destination: beta
""", encoding="utf-8")
    return root


def test_reindex_creates_index_files(fixture_repo):
    stats = pipeline.reindex(fixture_repo, allow_fake_embeddings=True)
    assert stats.sources_processed == 2
    assert stats.chunks_inserted >= 2
    assert (fixture_repo / "content" / "index" / "chunks.sqlite").is_file()
    assert (fixture_repo / "content" / "index" / "vectors.usearch").is_file()


def test_reindex_is_idempotent(fixture_repo):
    s1 = pipeline.reindex(fixture_repo, allow_fake_embeddings=True)
    s2 = pipeline.reindex(fixture_repo, allow_fake_embeddings=True)
    assert s2.chunks_inserted == 0
    assert s2.vectors_written == 0
    assert s1.chunks_inserted >= 1


def test_keyword_only_skips_vector_index(fixture_repo):
    stats = pipeline.reindex(fixture_repo, keyword_only=True, allow_fake_embeddings=True)
    assert stats.vectors_written == 0
    assert not (fixture_repo / "content" / "index" / "vectors.usearch").is_file()
    assert (fixture_repo / "content" / "index" / "chunks.sqlite").is_file()


def test_keyword_search_works_after_reindex(fixture_repo):
    pipeline.reindex(fixture_repo, allow_fake_embeddings=True)
    db = fixture_repo / "content" / "index" / "chunks.sqlite"
    with store.open_db(db) as con:
        rows = store.keyword_search(con, "ferrets")
    assert rows, "expected at least one keyword hit for `ferrets`"
    assert any("alpha" == r[2] for r in rows)
