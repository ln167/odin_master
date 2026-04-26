"""content/manifest.yaml parser + validator. Spec §4.6."""
from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path

import yaml

VALID_FETCHERS = {"local_file", "local_dir", "git_clone", "html_mirror", "pdf", "pasted_text"}
VALID_TIERS = {1, 2, 3}


@dataclass
class Source:
    id: str
    tier: int
    fetcher: str
    destination: str
    url: str | None = None
    source_path: str | None = None
    git_url: str | None = None
    processor: str | None = None
    last_updated: str | None = None
    extra: dict = field(default_factory=dict)


class ManifestError(ValueError):
    pass


def load(path: Path) -> list[Source]:
    raw = yaml.safe_load(path.read_text(encoding="utf-8"))
    if raw is None:
        return []
    if not isinstance(raw, list):
        raise ManifestError(f"{path}: top-level must be a list (got {type(raw).__name__})")
    out: list[Source] = []
    seen_ids: set[str] = set()
    for i, entry in enumerate(raw):
        if not isinstance(entry, dict):
            raise ManifestError(f"{path}[{i}]: entry must be a mapping")
        for key in ("id", "tier", "fetcher", "destination"):
            if key not in entry:
                raise ManifestError(f"{path}[{i}]: missing required key `{key}`")
        sid = entry["id"]
        if sid in seen_ids:
            raise ManifestError(f"{path}[{i}]: duplicate id `{sid}`")
        seen_ids.add(sid)
        if entry["tier"] not in VALID_TIERS:
            raise ManifestError(f"{path}[{sid}]: tier must be 1, 2, or 3 (got {entry['tier']!r})")
        f = entry["fetcher"]
        if f not in VALID_FETCHERS:
            raise ManifestError(f"{path}[{sid}]: unknown fetcher `{f}` (valid: {sorted(VALID_FETCHERS)})")
        # Per-fetcher required keys.
        if f == "git_clone" and "git_url" not in entry:
            raise ManifestError(f"{path}[{sid}]: git_clone requires `git_url`")
        if f == "html_mirror" and "url" not in entry:
            raise ManifestError(f"{path}[{sid}]: html_mirror requires `url`")
        if f in ("local_file", "local_dir", "pdf") and "source_path" not in entry:
            raise ManifestError(f"{path}[{sid}]: {f} requires `source_path`")
        out.append(
            Source(
                id=sid,
                tier=entry["tier"],
                fetcher=f,
                destination=entry["destination"],
                url=entry.get("url"),
                source_path=entry.get("source_path"),
                git_url=entry.get("git_url"),
                processor=entry.get("processor"),
                last_updated=entry.get("last_updated"),
                extra={k: v for k, v in entry.items() if k not in {
                    "id", "tier", "fetcher", "destination", "url", "source_path",
                    "git_url", "processor", "last_updated",
                }},
            )
        )
    return out
