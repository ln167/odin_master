"""Embedding via Ollama HTTP /api/embed (qwen3-embedding:4b) with offline fallback.

Spec §5.3:
  - Documents: NO instruction prefix.
  - Truncate 2560-dim → 1024 (Matryoshka representation learning).
  - L2-normalize.

Offline fallback: when ``ODIN_MASTER_FAKE_EMBEDDINGS=1`` (or Ollama is unreachable
and ``allow_fake=True``), produce deterministic vectors by hashing chunk text
into a normalized 1024-dim float32 array. Lets tests run without Ollama.
"""
from __future__ import annotations

import hashlib
import os

import numpy as np
import requests

EMBED_DIM = 1024
DEFAULT_URL = "http://127.0.0.1:11434"
DEFAULT_MODEL = "qwen3-embedding:4b"


def _fake_embed(text: str) -> np.ndarray:
    h = hashlib.sha256(text.encode("utf-8")).digest()
    seed = int.from_bytes(h[:8], "little")
    rng = np.random.default_rng(seed)
    v = rng.standard_normal(EMBED_DIM).astype(np.float32)
    return v / (np.linalg.norm(v) + 1e-12)


def _truncate_and_normalize(vec: list[float]) -> np.ndarray:
    arr = np.asarray(vec, dtype=np.float32)
    if arr.shape[0] > EMBED_DIM:
        arr = arr[:EMBED_DIM]
    return arr / (np.linalg.norm(arr) + 1e-12)


def embed_one(text: str, *, url: str = DEFAULT_URL, model: str = DEFAULT_MODEL,
              allow_fake: bool = False) -> np.ndarray:
    if os.environ.get("ODIN_MASTER_FAKE_EMBEDDINGS") == "1":
        return _fake_embed(text)
    try:
        r = requests.post(
            f"{url}/api/embed",
            json={"model": model, "input": text},
            timeout=30,
        )
        r.raise_for_status()
        data = r.json()
        # Ollama returns {"embeddings": [[...]]} for input list-or-string.
        embs = data.get("embeddings") or [data.get("embedding")]
        return _truncate_and_normalize(embs[0])
    except (requests.RequestException, ValueError, KeyError) as e:
        if allow_fake:
            return _fake_embed(text)
        raise RuntimeError(
            f"Ollama embed call failed ({e}). Start Ollama and pull `{model}`, "
            f"or pass --keyword-only to skip vector indexing."
        ) from e


def embed_batch(texts: list[str], *, url: str = DEFAULT_URL, model: str = DEFAULT_MODEL,
                allow_fake: bool = False) -> np.ndarray:
    return np.vstack([embed_one(t, url=url, model=model, allow_fake=allow_fake) for t in texts])
