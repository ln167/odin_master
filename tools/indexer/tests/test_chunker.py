from odin_master import chunker


def test_no_headings_yields_one_chunk():
    chunks = chunker.chunk_text("just some text without headings")
    assert len(chunks) == 1
    assert chunks[0].heading_path == "/"


def test_h1_h2_h3_path_assembly():
    text = """
# Top

intro

## Sub

middle

### Deep

leaf
"""
    chunks = chunker.chunk_text(text)
    paths = [c.heading_path for c in chunks]
    assert "/Top" in paths
    assert "/Top/Sub" in paths
    assert "/Top/Sub/Deep" in paths


def test_oversize_section_is_split():
    body = "para. " * 1000  # ~6000 chars
    text = "# Big\n\n" + body
    chunks = chunker.chunk_text(text, target_chars=2000, overlap_chars=200)
    assert len(chunks) >= 3
    assert all(c.heading_path == "/Big" for c in chunks)


def test_char_offsets_are_monotonic_within_section():
    text = "# A\n\n" + ("paragraph.\n\n" * 200)
    chunks = chunker.chunk_text(text, target_chars=400, overlap_chars=50)
    offsets = [c.char_offset for c in chunks]
    assert offsets == sorted(offsets)
