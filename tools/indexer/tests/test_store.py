from pathlib import Path

import numpy as np

from odin_master import store


def make_row(text="hello", source="s1", path="x.md", heading="/A"):
    return store.ChunkRow(source_id=source, tier=1, view="verbatim",
                          path=path, heading_path=heading, char_offset=0, text=text)


def test_open_db_creates_schema(tmp_path):
    with store.open_db(tmp_path / "db.sqlite") as con:
        rows = list(con.execute("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name").fetchall())
    names = [r[0] for r in rows]
    assert "chunks" in names
    assert "chunks_fts" in names


def test_upsert_chunk_is_idempotent(tmp_path):
    with store.open_db(tmp_path / "db.sqlite") as con:
        rid1, ins1 = store.upsert_chunk(con, make_row())
        rid2, ins2 = store.upsert_chunk(con, make_row())
    assert ins1 is True
    assert ins2 is False
    assert rid1 == rid2


def test_keyword_search_finds_inserted_chunk(tmp_path):
    with store.open_db(tmp_path / "db.sqlite") as con:
        store.upsert_chunk(con, make_row(text="The quick brown fox jumps."))
        store.upsert_chunk(con, make_row(text="Lazy dog stays still.", path="y.md"))
        con.commit()
        rows = store.keyword_search(con, "quick fox")
    assert any("quick" in r[2] or r[3] == "x.md" for r in rows)


def test_vector_index_roundtrip(tmp_path):
    p = tmp_path / "vectors.usearch"
    idx = store.open_vector_index(p)
    v = np.random.default_rng(0).standard_normal(1024).astype(np.float32)
    v /= np.linalg.norm(v)
    store.add_vector(idx, 1, v)
    store.save_vector_index(idx, p)
    idx2 = store.open_vector_index(p)
    assert 1 in idx2
