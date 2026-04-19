from pathlib import Path

import pytest

from odin_master import manifest


def write(tmp_path: Path, body: str) -> Path:
    p = tmp_path / "manifest.yaml"
    p.write_text(body, encoding="utf-8")
    return p


def test_empty_manifest_is_empty_list(tmp_path):
    p = write(tmp_path, "[]\n")
    assert manifest.load(p) == []


def test_valid_minimal_local_file(tmp_path):
    p = write(tmp_path, """
- id: example
  tier: 2
  fetcher: local_file
  source_path: README.md
  destination: example
""")
    sources = manifest.load(p)
    assert len(sources) == 1
    assert sources[0].id == "example"
    assert sources[0].fetcher == "local_file"


def test_missing_required_key_raises(tmp_path):
    p = write(tmp_path, """
- id: bad
  tier: 1
  fetcher: local_file
  destination: x
""")
    with pytest.raises(manifest.ManifestError, match="source_path"):
        manifest.load(p)


def test_unknown_fetcher_raises(tmp_path):
    p = write(tmp_path, """
- id: bad
  tier: 1
  fetcher: bogus_kind
  destination: x
""")
    with pytest.raises(manifest.ManifestError, match="unknown fetcher"):
        manifest.load(p)


def test_invalid_tier_raises(tmp_path):
    p = write(tmp_path, """
- id: bad
  tier: 7
  fetcher: local_file
  source_path: x.md
  destination: x
""")
    with pytest.raises(manifest.ManifestError, match="tier"):
        manifest.load(p)


def test_duplicate_id_raises(tmp_path):
    p = write(tmp_path, """
- id: dup
  tier: 1
  fetcher: local_file
  source_path: a.md
  destination: a
- id: dup
  tier: 2
  fetcher: local_file
  source_path: b.md
  destination: b
""")
    with pytest.raises(manifest.ManifestError, match="duplicate id"):
        manifest.load(p)
