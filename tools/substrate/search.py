#!/usr/bin/env python3
"""odin-master substrate-search — thin wrapper over qmd.

Forwards args to `qmd query` (hybrid: BM25 + vector + LLM rerank) by default,
or `qmd search` (BM25-only, no LLM/embeddings) with --bm25.

qmd is the substrate's search backend per Karpathy's recommendation.
Install: `npm install -g @tobilu/qmd`. Index: `qmd collection add <path> --name <name>`.
For embedding-backed query (vsearch / query): also run `qmd embed`.
"""
from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
NPM_BIN_WIN = Path.home() / "AppData" / "Roaming" / "npm"
QMD_JS_WIN = (
    NPM_BIN_WIN / "node_modules" / "@tobilu" / "qmd" / "dist" / "cli" / "qmd.js"
)


def find_qmd() -> tuple[list[str], bool]:
    """Locate the right command to invoke qmd.

    Returns (argv-prefix, use_shell). On Windows, the npm shim invokes /bin/sh
    which isn't reachable from cmd.exe, so we invoke node + qmd.js directly.
    On macOS/Linux, the shim works fine.
    """
    if os.name == "nt" and QMD_JS_WIN.exists():
        node = shutil.which("node") or "node"
        return [node, str(QMD_JS_WIN)], False
    found = shutil.which("qmd")
    if found:
        return [found], False
    print(
        "error: qmd not on PATH. Install with `npm install -g @tobilu/qmd` "
        "(or `bun install -g @tobilu/qmd`).",
        file=sys.stderr,
    )
    sys.exit(2)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("query", nargs="*", help="search query (joined with spaces)")
    ap.add_argument("--bm25", action="store_true",
                    help="use BM25-only `qmd search` (no embeddings)")
    ap.add_argument("--limit", "-l", type=int, default=10, help="max results")
    args, extra = ap.parse_known_args()

    prefix, use_shell = find_qmd()
    cmd = prefix + ["search" if args.bm25 else "query"]
    if args.query:
        cmd.append(" ".join(args.query))
    if args.limit:
        cmd += ["--limit", str(args.limit)]
    cmd += extra

    # Default to Vulkan on Windows — qmd's "auto" mode picks CUDA which fails to
    # load on most prebuilt node-llama-cpp binaries, leaving qmd to fall back to
    # CPU (impractically slow). Vulkan works out-of-the-box on the same binaries.
    # User can override by setting QMD_LLAMA_GPU explicitly before invoking.
    env = os.environ.copy()
    if not args.bm25 and not env.get("QMD_LLAMA_GPU") and os.name == "nt":
        env["QMD_LLAMA_GPU"] = "vulkan"

    return subprocess.run(cmd, cwd=str(REPO), shell=use_shell, env=env).returncode


if __name__ == "__main__":
    sys.exit(main())
