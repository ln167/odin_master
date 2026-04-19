"""SQLite + FTS5 chunk store and USearch HNSW vector index.

Schema:
    chunks(id, source_id, tier, view, path, heading_path, char_offset, text, sha)
    chunks_fts (FTS5 virtual table over text)

Vector index lives in ``vectors.usearch`` keyed by chunk row id.
"""
from __future__ import annotations

import hashlib
import sqlite3
from contextlib import contextmanager
from dataclasses import dataclass
from pathlib import Path

import numpy as np
from usearch.index import Index

SCHEMA = """
CREATE TABLE IF NOT EXISTS chunks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_id    TEXT NOT NULL,
    tier         INTEGER NOT NULL,
    view         TEXT NOT NULL,
    path         TEXT NOT NULL,
    heading_path TEXT NOT NULL,
    char_offset  INTEGER NOT NULL,
    text         TEXT NOT NULL,
    sha          TEXT NOT NULL UNIQUE
);
CREATE INDEX IF NOT EXISTS chunks_source_idx ON chunks(source_id);
CREATE INDEX IF NOT EXISTS chunks_tier_idx ON chunks(tier);
CREATE VIRTUAL TABLE IF NOT EXISTS chunks_fts USING fts5(
    text, content='chunks', content_rowid='id', tokenize='porter unicode61'
);
CREATE TRIGGER IF NOT EXISTS chunks_ai AFTER INSERT ON chunks BEGIN
    INSERT INTO chunks_fts(rowid, text) VALUES (new.id, new.text);
END;
CREATE TRIGGER IF NOT EXISTS chunks_ad AFTER DELETE ON chunks BEGIN
    INSERT INTO chunks_fts(chunks_fts, rowid, text) VALUES ('delete', old.id, old.text);
END;
"""


@dataclass
class ChunkRow:
    source_id: str
    tier: int
    view: str           # "verbatim" | "summary"
    path: str           # path under content/sources/<tier>/<...>
    heading_path: str
    char_offset: int
    text: str

    @property
    def sha(self) -> str:
        h = hashlib.sha256()
        h.update(self.source_id.encode())
        h.update(self.path.encode())
        h.update(self.heading_path.encode())
        h.update(self.text.encode())
        return h.hexdigest()


@contextmanager
def open_db(db_path: Path):
    db_path.parent.mkdir(parents=True, exist_ok=True)
    con = sqlite3.connect(db_path)
    con.executescript(SCHEMA)
    con.commit()
    try:
        yield con
    finally:
        con.close()


def upsert_chunk(con: sqlite3.Connection, row: ChunkRow) -> tuple[int, bool]:
    """Insert chunk if new (by sha). Returns (rowid, inserted)."""
    cur = con.execute("SELECT id FROM chunks WHERE sha = ?", (row.sha,))
    existing = cur.fetchone()
    if existing:
        return existing[0], False
    cur = con.execute(
        "INSERT INTO chunks(source_id, tier, view, path, heading_path, char_offset, text, sha) "
        "VALUES (?,?,?,?,?,?,?,?)",
        (row.source_id, row.tier, row.view, row.path, row.heading_path,
         row.char_offset, row.text, row.sha),
    )
    return cur.lastrowid, True


def keyword_search(con: sqlite3.Connection, query: str, *, top: int = 10,
                   tiers: list[int] | None = None,
                   source: str | None = None) -> list[tuple[int, float, str, str, str, int]]:
    """Return [(rowid, bm25_score, source_id, path, heading_path, tier)]."""
    where = ["chunks.id = chunks_fts.rowid", "chunks_fts MATCH ?"]
    params: list = [query]
    if tiers:
        where.append("chunks.tier IN (" + ",".join("?" * len(tiers)) + ")")
        params.extend(tiers)
    if source:
        where.append("chunks.source_id = ?")
        params.append(source)
    sql = (
        "SELECT chunks.id, bm25(chunks_fts), chunks.source_id, chunks.path, "
        "       chunks.heading_path, chunks.tier "
        "FROM chunks_fts, chunks "
        f"WHERE {' AND '.join(where)} "
        "ORDER BY bm25(chunks_fts) ASC LIMIT ?"
    )
    params.append(top)
    return list(con.execute(sql, params).fetchall())


def open_vector_index(path: Path) -> Index:
    path.parent.mkdir(parents=True, exist_ok=True)
    idx = Index(ndim=1024, metric="cos", dtype="f32")
    if path.exists():
        idx.load(str(path))
    return idx


def add_vector(idx: Index, key: int, vec: np.ndarray) -> None:
    if key in idx:
        idx.remove(key)
    idx.add(np.array([key], dtype=np.int64), vec.reshape(1, -1))


def save_vector_index(idx: Index, path: Path) -> None:
    idx.save(str(path))
