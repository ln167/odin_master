"""Summarize a fetched source into wiki concept pages via local Ollama LLM.

Reads source files under content/sources/tier{N}-*/<destination>/, prompts
Ollama (default llama3.2), parses out H1-delimited sections, writes one file
per concept under content/wiki/concepts/<slug>.md, and refreshes INDEX.md.
"""
from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path

import requests

from . import manifest, wiki_index

DEFAULT_URL = "http://127.0.0.1:11434"
DEFAULT_MODEL = "llama3.2"
SYSTEM_PROMPT = (
    "You compile concept entries for an Odin programming language wiki. "
    "Reply with ONLY markdown sections in this exact shape:\n\n"
    "# <Short Concept Name>\n\n"
    "<one or two paragraphs>\n\n"
    "<!-- source: <path> -->\n\n"
    "Rules: titles are 2-5 word noun phrases (e.g. `# Tagged Unions`); never "
    "sentences. No preamble, no `Here is...`, no markdown other than the "
    "section headings. The language is Odin — never call it Rust, C, or Go. "
    "Output 3 to 7 sections; nothing before the first `#` and nothing after "
    "the last `<!-- source: ... -->`."
)
EXAMPLE_USER = (
    "Source path: example/overview.md\n\n"
    "Odin is a systems language with explicit allocators threaded through an "
    "implicit `context`. Tagged unions are written `union { Foo, Bar }` and "
    "destructured with `switch v in u`."
)
EXAMPLE_ASSISTANT = (
    "# Context Allocator\n\n"
    "Every Odin procedure receives an implicit `context` whose `allocator` "
    "field selects the active allocator for `make`, `new`, and `delete`. "
    "Override it locally with `context.allocator = my_arena` to scope "
    "allocation strategies without changing call sites.\n\n"
    "<!-- source: example/overview.md -->\n\n"
    "# Tagged Unions\n\n"
    "Odin's `union { Foo, Bar }` declares a sum type whose value is one of "
    "the listed variants. Use `switch v in u { case Foo: ... }` to "
    "destructure exhaustively.\n\n"
    "<!-- source: example/overview.md -->"
)
USER_PROMPT = "Source path: {source_path}\n\n{body}"

# Reject sections whose title looks like commentary rather than a concept name.
_JUNK_PHRASES = (
    "here is", "here's", "it appears", "this is", "the following", "below is",
    "as you can see", "in summary", "let me",
)


def _title_is_concept(title: str) -> bool:
    if not title or len(title) > 60:
        return False
    low = title.lower()
    if any(p in low for p in _JUNK_PHRASES):
        return False
    if title.endswith((":", ".")):
        return False
    return True


@dataclass
class SummarizeReport:
    source_id: str
    written: list[Path]
    raw_response_chars: int


def _slug(s: str) -> str:
    s = re.sub(r"[^a-z0-9]+", "-", s.lower()).strip("-")
    return s or "concept"


def _tier_dir_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]


def _source_dir(repo_root: Path, src: manifest.Source) -> Path:
    return repo_root / "content" / "sources" / f"tier{src.tier}-{_tier_dir_name(src.tier)}" / src.destination


_INTRO_KEYWORDS = (
    "introduction", "overview", "intro", "guide", "tutorial", "getting-started",
    "quick-start", "primer", "language", "basics", "concepts",
)


def _file_score(rel_path: str, text: str) -> float:
    """Higher = more concept-dense. Penalizes code-heavy files; rewards intros."""
    name = rel_path.lower()
    score = 0.0
    if any(k in name for k in _INTRO_KEYWORDS):
        score += 100.0
    in_fence = False
    code_lines = 0
    total_lines = 0
    for line in text.splitlines():
        total_lines += 1
        if line.lstrip().startswith("```"):
            in_fence = not in_fence
            continue
        if in_fence:
            code_lines += 1
    if total_lines:
        prose_ratio = 1.0 - (code_lines / total_lines)
        score += 50.0 * prose_ratio
    return score


def _read_body(src_dir: Path, max_chars: int = 8_000) -> str:
    candidates: list[tuple[float, str, str]] = []
    for p in sorted(src_dir.rglob("*")):
        if not p.is_file() or p.suffix.lower() not in {".md", ".txt"}:
            continue
        text = p.read_text(encoding="utf-8", errors="replace")
        rel = p.relative_to(src_dir).as_posix()
        candidates.append((_file_score(rel, text), rel, text))
    candidates.sort(key=lambda t: t[0], reverse=True)
    chunks: list[str] = []
    total = 0
    for _, rel, text in candidates:
        chunks.append(f"## file: {rel}\n\n{text}")
        total += len(text)
        if total >= max_chars:
            break
    return "\n\n".join(chunks)[:max_chars]


def _split_sections(text: str, source_path: str) -> list[tuple[str, str]]:
    """Yield (title, body_with_backlink) tuples from llm output. Drops junk titles."""
    parts = re.split(r"(?m)^#\s+", text)
    out: list[tuple[str, str]] = []
    for chunk in parts:
        chunk = chunk.strip()
        if not chunk:
            continue
        first_line, _, rest = chunk.partition("\n")
        title = first_line.strip()
        if not _title_is_concept(title):
            continue
        body = rest.strip()
        if "<!-- source:" not in body:
            body = body + f"\n\n<!-- source: {source_path} -->"
        out.append((title, f"# {title}\n\n{body}\n"))
    return out


def _call_ollama(messages: list[dict], *, url: str, model: str, timeout: int = 600) -> str:
    r = requests.post(
        f"{url}/api/chat",
        json={
            "model": model,
            "messages": messages,
            "stream": False,
            "options": {"temperature": 0.0, "num_predict": 2048},
        },
        timeout=timeout,
    )
    r.raise_for_status()
    return r.json().get("message", {}).get("content", "")


def summarize(
    repo_root: Path,
    source_id: str,
    *,
    url: str = DEFAULT_URL,
    model: str = DEFAULT_MODEL,
) -> SummarizeReport:
    sources = manifest.load(repo_root / "content" / "manifest.yaml")
    src = next((s for s in sources if s.id == source_id), None)
    if src is None:
        raise ValueError(f"source `{source_id}` not in manifest")
    src_dir = _source_dir(repo_root, src)
    if not src_dir.is_dir():
        raise FileNotFoundError(f"source dir {src_dir} missing — run `odin-master update {source_id}` first")
    body = _read_body(src_dir)
    if not body.strip():
        raise RuntimeError(f"source `{source_id}` has no .md/.txt files under {src_dir}")
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user", "content": EXAMPLE_USER},
        {"role": "assistant", "content": EXAMPLE_ASSISTANT},
        {"role": "user", "content": USER_PROMPT.format(
            source_path=src_dir.as_posix(), body=body)},
    ]
    response = _call_ollama(messages, url=url, model=model)

    out_dir = repo_root / "content" / "wiki" / "concepts"
    out_dir.mkdir(parents=True, exist_ok=True)
    written: list[Path] = []
    for title, content in _split_sections(response, src_dir.as_posix()):
        path = out_dir / f"{_slug(title)}.md"
        path.write_text(content, encoding="utf-8")
        written.append(path)

    wiki_index.regenerate(repo_root)
    return SummarizeReport(source_id=source_id, written=written, raw_response_chars=len(response))
