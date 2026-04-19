"""Read build/test-report.json (per spec §11.4) and emit a markdown digest."""
from __future__ import annotations

import json
from pathlib import Path


def to_markdown(report_path: Path) -> str:
    data = json.loads(Path(report_path).read_text(encoding="utf-8"))
    tests = data.get("tests", [])
    failed = [t for t in tests if not t.get("ok", False)]
    lines = [
        f"# Test summary",
        "",
        f"- total: {len(tests)}",
        f"- passed: {len(tests) - len(failed)}",
        f"- failed: {len(failed)}",
        "",
    ]
    if failed:
        lines.append("## Failures")
        lines.append("")
        for t in failed:
            loc = t.get("location", "?")
            name = t.get("name", "?")
            msg = t.get("message", "").strip().splitlines()[0:1]
            lines.append(f"- `{name}` — {loc}" + (f" — {msg[0]}" if msg else ""))
    return "\n".join(lines) + "\n"
