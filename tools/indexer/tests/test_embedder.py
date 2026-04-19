import os

import numpy as np
import pytest

from odin_master import embedder


def test_fake_embeddings_are_deterministic_and_normalized(monkeypatch):
    monkeypatch.setenv("ODIN_MASTER_FAKE_EMBEDDINGS", "1")
    a = embedder.embed_one("hello world")
    b = embedder.embed_one("hello world")
    c = embedder.embed_one("different")
    assert a.shape == (1024,)
    assert np.allclose(a, b)
    assert not np.allclose(a, c)
    assert abs(np.linalg.norm(a) - 1.0) < 1e-5


def test_embed_batch_shape(monkeypatch):
    monkeypatch.setenv("ODIN_MASTER_FAKE_EMBEDDINGS", "1")
    out = embedder.embed_batch(["a", "b", "c"])
    assert out.shape == (3, 1024)


def test_real_call_falls_back_when_allow_fake(monkeypatch):
    # Ensure no fake-mode env, force ollama call, point at unreachable port.
    monkeypatch.delenv("ODIN_MASTER_FAKE_EMBEDDINGS", raising=False)
    out = embedder.embed_one("x", url="http://127.0.0.1:1", allow_fake=True)
    assert out.shape == (1024,)


def test_real_call_raises_without_allow_fake(monkeypatch):
    monkeypatch.delenv("ODIN_MASTER_FAKE_EMBEDDINGS", raising=False)
    with pytest.raises(RuntimeError, match="Ollama"):
        embedder.embed_one("x", url="http://127.0.0.1:1", allow_fake=False)
