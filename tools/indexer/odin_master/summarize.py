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
PROMPT = (
    "Extract 3 to 7 key concepts from the following Odin documentation. "
    "For each concept output a markdown section starting with `# <concept>` "
    "as the level-1 heading, followed by 1-2 paragraphs. End each section with "
    "an HTML comment `<!-- source: {source_path} -->`. Output concepts only, "
    "no preamble.\n\n---\n\n{body}"
)


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


def _read_body(src_dir: Path, max_chars: int = 60_000) -> str:
    chunks: list[str] = []
    total = 0
    for p in sorted(src_dir.rglob("*")):
        if not p.is_file() or p.suffix.lower() not in {".md", ".txt"}:
            continue
        text = p.read_text(encoding="utf-8", errors="replace")
        rel = p.relative_to(src_dir).as_posix()
        chunks.append(f"## file: {rel}\n\n{text}")
        total += len(text)
        if total >= max_chars:
            break
    return "\n\n".join(chunks)[:max_chars]


def _split_sections(text: str, source_path: str) -> list[tuple[str, str]]:
    """Yield (title, body_with_backlink) tuples from llm output."""
    parts = re.split(r"(?m)^#\s+", text)
    out: list[tuple[str, str]] = []
    for chunk in parts:
        chunk = chunk.strip()
        if not chunk:
            continue
        first_line, _, rest = chunk.partition("\n")
        title = first_line.strip()
        body = rest.strip()
        if "<!-- source:" not in body:
            body = body + f"\n\n<!-- source: {source_path} -->"
        out.append((title, f"# {title}\n\n{body}\n"))
    return out


def _call_ollama(prompt: str, *, url: str, model: str, timeout: int = 600) -> str:
    r = requests.post(
        f"{url}/api/generate",
        json={"model": model, "prompt": prompt, "stream": False},
        timeout=timeout,
    )
    r.raise_for_status()
    return r.json().get("response", "")


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
    prompt = PROMPT.format(source_path=src_dir.as_posix(), body=body)
    response = _call_ollama(prompt, url=url, model=model)

    out_dir = repo_root / "content" / "wiki" / "concepts"
    out_dir.mkdir(parents=True, exist_ok=True)
    written: list[Path] = []
    for title, content in _split_sections(response, src_dir.as_posix()):
        path = out_dir / f"{_slug(title)}.md"
        path.write_text(content, encoding="utf-8")
        written.append(path)

    wiki_index.regenerate(repo_root)
    return SummarizeReport(source_id=source_id, written=written, raw_response_chars=len(response))
