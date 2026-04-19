from pathlib import Path

from odin_master import wiki_index


def test_empty_wiki(tmp_path: Path):
    out = wiki_index.regenerate(tmp_path)
    assert out.is_file()
    assert "no concepts yet" in out.read_text(encoding="utf-8")


def test_populated_wiki(tmp_path: Path):
    concepts = tmp_path / "content" / "wiki" / "concepts"
    concepts.mkdir(parents=True)
    (concepts / "alpha.md").write_text("# Alpha\nbody\n", encoding="utf-8")
    (concepts / "beta.md").write_text("# Beta\nmore\n", encoding="utf-8")
    summaries = tmp_path / "content" / "wiki" / "summaries"
    summaries.mkdir(parents=True)
    (summaries / "gamma.md").write_text("# Gamma\nyay\n", encoding="utf-8")

    out = wiki_index.regenerate(tmp_path)
    text = out.read_text(encoding="utf-8")
    assert "| Alpha |" in text
    assert "| Beta |" in text
    assert "| Gamma |" in text
    assert "concepts/alpha.md" in text
    assert "summaries/gamma.md" in text


def test_first_h1_falls_back_to_stem(tmp_path: Path):
    concepts = tmp_path / "content" / "wiki" / "concepts"
    concepts.mkdir(parents=True)
    (concepts / "no-heading.md").write_text("just body, no heading\n", encoding="utf-8")
    out = wiki_index.regenerate(tmp_path)
    assert "no-heading" in out.read_text(encoding="utf-8")
