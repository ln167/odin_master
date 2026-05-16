#!/usr/bin/env python3
"""odin-master fetch — html_mirror fetcher with BFS crawl.

Walks content/manifest.yaml, finds entries with fetcher: html_mirror, fetches
each URL, converts HTML to markdown, writes to
content/domains/<domain>/source/raw/tier<N>-<bucket>/<destination>/<path>.md
with a small provenance frontmatter.

If a manifest entry has `mirror: true`, follows same-host links from the seed
page up to `max_depth` hops and `max_pages` total pages. Otherwise fetches the
seed page only.

Usage:
  python tools/substrate/fetch.py                     # all html_mirror entries
  python tools/substrate/fetch.py --id alextardif-bindless
  python tools/substrate/fetch.py --domain graphics
  python tools/substrate/fetch.py --domain graphics --force   # re-fetch existing
"""
from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import re
import sys
import time
import urllib.parse
import urllib.request
from html.parser import HTMLParser
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[2]
MANIFEST = REPO / "content" / "manifest.yaml"
DOMAINS_DIR = REPO / "content" / "domains"

TIER_BUCKET = {1: "tier1-authoritative", 2: "tier2-curated", 3: "tier3-community"}
REQUEST_DELAY_SEC = 0.5  # be polite between requests


# ─── HTML to markdown ─────────────────────────────────────────────────────

class HtmlToMd(HTMLParser):
	"""Minimal HTML -> markdown converter. Handles headings, paragraphs,
	links, inline code, code blocks, ul/ol lists, bold/em. Strips scripts,
	styles, navs."""

	SKIP_TAGS = {"script", "style", "nav", "footer", "header", "aside", "form", "noscript"}

	def __init__(self):
		super().__init__()
		self.parts: list[str] = []
		self.skip_depth = 0
		self.in_pre = False
		self.in_code = False
		self.list_stack: list[str] = []
		self.ol_counter: list[int] = []
		self.link_href: str | None = None
		self.link_text: list[str] = []

	def handle_starttag(self, tag, attrs):
		if tag in self.SKIP_TAGS:
			self.skip_depth += 1
			return
		if self.skip_depth:
			return
		ad = dict(attrs)
		match tag:
			case "h1": self.parts.append("\n\n# ")
			case "h2": self.parts.append("\n\n## ")
			case "h3": self.parts.append("\n\n### ")
			case "h4": self.parts.append("\n\n#### ")
			case "h5": self.parts.append("\n\n##### ")
			case "h6": self.parts.append("\n\n###### ")
			case "p":  self.parts.append("\n\n")
			case "br": self.parts.append("  \n")
			case "hr": self.parts.append("\n\n---\n\n")
			case "strong" | "b": self.parts.append("**")
			case "em" | "i": self.parts.append("*")
			case "pre":
				self.in_pre = True
				self.parts.append("\n\n```\n")
			case "code":
				self.in_code = True
				if not self.in_pre:
					self.parts.append("`")
			case "ul":
				self.list_stack.append("ul")
				self.parts.append("\n")
			case "ol":
				self.list_stack.append("ol")
				self.ol_counter.append(0)
				self.parts.append("\n")
			case "li":
				if self.list_stack and self.list_stack[-1] == "ol":
					self.ol_counter[-1] += 1
					self.parts.append(f"\n{self.ol_counter[-1]}. ")
				else:
					self.parts.append("\n- ")
			case "a":
				self.link_href = ad.get("href")
				self.link_text = []

	def handle_endtag(self, tag):
		if tag in self.SKIP_TAGS:
			if self.skip_depth: self.skip_depth -= 1
			return
		if self.skip_depth:
			return
		match tag:
			case "h1" | "h2" | "h3" | "h4" | "h5" | "h6":
				self.parts.append("\n")
			case "strong" | "b": self.parts.append("**")
			case "em" | "i": self.parts.append("*")
			case "pre":
				self.in_pre = False
				self.parts.append("\n```\n\n")
			case "code":
				self.in_code = False
				if not self.in_pre:
					self.parts.append("`")
			case "ul" | "ol":
				if self.list_stack: self.list_stack.pop()
				if tag == "ol" and self.ol_counter: self.ol_counter.pop()
				self.parts.append("\n")
			case "a":
				text = "".join(self.link_text).strip()
				if self.link_href and text:
					self.parts.append(f"[{text}]({self.link_href})")
				else:
					self.parts.append(text)
				self.link_href = None
				self.link_text = []

	def handle_data(self, data):
		if self.skip_depth:
			return
		if self.link_href is not None:
			self.link_text.append(data)
			return
		self.parts.append(data)

	def result(self) -> str:
		text = "".join(self.parts)
		while "\n\n\n" in text:
			text = text.replace("\n\n\n", "\n\n")
		return text.strip() + "\n"


def html_to_md(html: str) -> str:
	p = HtmlToMd()
	p.feed(html)
	return p.result()


# ─── URL handling ─────────────────────────────────────────────────────────

HREF_RE = re.compile(r'href\s*=\s*["\']([^"\']+)["\']', re.IGNORECASE)

def extract_links(html: str, base_url: str) -> list[str]:
	"""All hrefs in the page, resolved against base_url. Fragments stripped."""
	out = []
	for m in HREF_RE.finditer(html):
		href = m.group(1).strip()
		if not href or href.startswith(("javascript:", "mailto:", "#")):
			continue
		absolute = urllib.parse.urljoin(base_url, href)
		parsed = urllib.parse.urlparse(absolute)
		# strip fragment + trailing slash for dedup; keep query (some sites need it)
		clean = parsed._replace(fragment="").geturl().rstrip("/")
		out.append(clean)
	return out


def same_host(url_a: str, url_b: str) -> bool:
	return urllib.parse.urlparse(url_a).netloc == urllib.parse.urlparse(url_b).netloc


def url_to_relpath(seed_url: str, url: str) -> str:
	"""Map a URL to a relative .md filename inside the destination dir."""
	seed_parsed = urllib.parse.urlparse(seed_url)
	url_parsed = urllib.parse.urlparse(url)
	# If the page IS the seed (or seed without trailing slash), call it index.md.
	if url.rstrip("/") == seed_url.rstrip("/"):
		return "index.md"
	# Take path relative to seed's directory; sanitize.
	seed_dir = seed_parsed.path.rsplit("/", 1)[0] + "/"
	path = url_parsed.path
	if path.startswith(seed_dir):
		path = path[len(seed_dir):]
	path = path.lstrip("/")
	if not path or path.endswith("/"):
		path = (path or "") + "index"
	# Drop common extensions.
	for ext in (".html", ".htm", ".php"):
		if path.endswith(ext):
			path = path[: -len(ext)]
			break
	# Sanitize each component: keep [a-zA-Z0-9._-], replace rest with `-`.
	parts = []
	for seg in path.split("/"):
		seg = re.sub(r"[^a-zA-Z0-9._-]+", "-", seg).strip("-") or "x"
		parts.append(seg)
	return "/".join(parts) + ".md"


# ─── Fetch + write ────────────────────────────────────────────────────────

def fetch_url(url: str) -> tuple[str, str]:
	"""Returns (html, content_type)."""
	req = urllib.request.Request(url, headers={"User-Agent": "odin_master/fetch"})
	with urllib.request.urlopen(req, timeout=30) as r:
		ct = r.headers.get("Content-Type", "")
		raw = r.read()
	return raw.decode("utf-8", errors="replace"), ct


def write_page(out_file: Path, url: str, entry_id: str, html: str) -> None:
	md = html_to_md(html)
	sha = hashlib.sha256(html.encode("utf-8")).hexdigest()
	frontmatter = (
		f"---\n"
		f"source_url: {url}\n"
		f"source_id: {entry_id}\n"
		f"fetched_at: {dt.datetime.now(dt.UTC).isoformat()}\n"
		f"fetcher: html_mirror\n"
		f"sha256: {sha}\n"
		f"---\n\n"
	)
	out_file.parent.mkdir(parents=True, exist_ok=True)
	out_file.write_text(frontmatter + md, encoding="utf-8")


def fetch_one(entry: dict, *, force: bool) -> bool:
	if entry.get("fetcher") != "html_mirror":
		return False
	tier = entry["tier"]
	domain = entry["domain"]
	dest = entry["destination"]
	seed_url = entry["url"]
	bucket = TIER_BUCKET[tier]
	out_dir = DOMAINS_DIR / domain / "source" / "raw" / bucket / dest

	mirror = bool(entry.get("mirror"))
	max_depth = int(entry.get("max_depth", 1) or 1)
	max_pages = int(entry.get("max_pages", 1) or 1)

	if not mirror:
		max_depth = 0
		max_pages = 1

	# BFS over (url, depth).
	seed_clean = seed_url.rstrip("/")
	queue: list[tuple[str, int]] = [(seed_clean, 0)]
	visited: set[str] = set()
	wrote = 0
	skipped = 0

	while queue and wrote + skipped < max_pages:
		url, depth = queue.pop(0)
		if url in visited:
			continue
		visited.add(url)

		out_file = out_dir / url_to_relpath(seed_clean, url)
		if out_file.exists() and not force:
			print(f"SKIP  {entry['id']}  {url}")
			skipped += 1
			# Still extract links from a cached file if we want to keep crawling.
			# Simpler: don't. If user wants a recrawl, --force.
			continue

		try:
			print(f"FETCH {entry['id']}  {url}  (depth {depth})")
			html, ct = fetch_url(url)
		except Exception as ex:
			print(f"  ERROR {ex}")
			continue
		if "html" not in ct and "xml" not in ct and ct:
			print(f"  skip non-html content-type: {ct}")
			continue

		write_page(out_file, url, entry["id"], html)
		wrote += 1
		print(f"  WROTE {out_file.relative_to(REPO)}  ({len(html):,} bytes)")

		if depth < max_depth:
			for link in extract_links(html, url):
				if link in visited:
					continue
				if not same_host(link, seed_clean):
					continue
				# Optional: stay under the seed's path prefix to avoid drifting
				# to unrelated parts of the same host.
				seed_path = urllib.parse.urlparse(seed_clean).path.rstrip("/")
				link_path = urllib.parse.urlparse(link).path
				if seed_path and not link_path.startswith(seed_path):
					continue
				queue.append((link, depth + 1))

		if wrote + skipped < max_pages and queue:
			time.sleep(REQUEST_DELAY_SEC)

	print(f"DONE  {entry['id']}  wrote={wrote} skipped={skipped} visited={len(visited)}")
	return True


def main() -> int:
	ap = argparse.ArgumentParser()
	ap.add_argument("--id", help="fetch a single manifest id")
	ap.add_argument("--domain", help="fetch all html_mirror entries in this domain")
	ap.add_argument("--force", action="store_true", help="re-fetch existing files")
	args = ap.parse_args()

	entries = yaml.safe_load(MANIFEST.read_text(encoding="utf-8"))
	if args.id:
		entries = [e for e in entries if e["id"] == args.id]
		if not entries:
			print(f"no manifest entry with id={args.id}", file=sys.stderr)
			return 1
	elif args.domain:
		entries = [e for e in entries if e.get("domain") == args.domain]

	any_done = False
	for e in entries:
		if fetch_one(e, force=args.force):
			any_done = True
	if not any_done:
		print("no html_mirror entries matched")
		return 1
	return 0


if __name__ == "__main__":
	sys.exit(main())
