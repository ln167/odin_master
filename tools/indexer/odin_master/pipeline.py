"""End-to-end indexing pipeline: manifest → fetch → chunk → embed → write."""
from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

from . import chunker, embedder, ingestors, manifest, store


@dataclass
class IndexStats:
    sources_processed: int = 0
    chunks_seen: int = 0
    chunks_inserted: int = 0
    vectors_written: int = 0


def reindex(repo_root: Path, *, keyword_only: bool = False, allow_fake_embeddings: bool = False,
            ollama_url: str = embedder.DEFAULT_URL,
            ollama_model: str = embedder.DEFAULT_MODEL) -> IndexStats:
    content = repo_root / "content"
    sources = manifest.load(content / "manifest.yaml")
    index_dir = content / "index"
    db_path = index_dir / "chunks.sqlite"
    vec_path = index_dir / "vectors.usearch"
    stats = IndexStats()
    with store.open_db(db_path) as con:
        vec = None if keyword_only else store.open_vector_index(vec_path)
        for src in sources:
            files = ingestors.fetch(src, content)
            stats.sources_processed += 1
            for f in files:
                for chunk in chunker.chunk_text(f.text):
                    stats.chunks_seen += 1
                    row = store.ChunkRow(
                        source_id=src.id, tier=src.tier, view="verbatim",
                        path=f.rel_path, heading_path=chunk.heading_path,
                        char_offset=chunk.char_offset, text=chunk.text,
                    )
                    rowid, inserted = store.upsert_chunk(con, row)
                    if inserted:
                        stats.chunks_inserted += 1
                        if vec is not None:
                            v = embedder.embed_one(chunk.text, url=ollama_url,
                                                   model=ollama_model,
                                                   allow_fake=allow_fake_embeddings)
                            store.add_vector(vec, rowid, v)
                            stats.vectors_written += 1
        con.commit()
        if vec is not None:
            store.save_vector_index(vec, vec_path)
    # Record manifest hash for cross-machine sanity check.
    (index_dir / "manifest-hash.txt").write_text(
        json.dumps({"sources": [s.id for s in sources], "stats": stats.__dict__}),
        encoding="utf-8",
    )
    return stats
