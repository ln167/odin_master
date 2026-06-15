#!/usr/bin/env python3
"""Assemble the Odin lesson HTML explainers into a flat static site for hosting.

Copies every self-contained lesson page to site/<slug>.html and generates a
themed site/index.html syllabus that lists the lessons in curriculum order,
grouped into chapters. Re-run after editing any lesson page, then redeploy site/.
"""
import shutil
from pathlib import Path

ROOT = Path(__file__).parent
LESSONS = ROOT / "content/domains/odin/vault/lessons"
OUT = ROOT / "site"

# Curated syllabus: (chapter, [(slug, short-name, one-line description), ...]).
# Order here IS the display order; numbering runs 1..N across all chapters.
CHAPTERS = [
    ("Getting started", [
        ("00-setup-check",                  "Setup check",            "Is your toolchain healthy?"),
        ("01-hellope",                      "Hellope!",               "The smallest program, taken apart"),
        ("01b-packages-and-imports",        "Packages & imports",     "How folders become a program"),
    ]),
    ("Core types", [
        ("02-types-and-printing",           "Types & printing",       "Bit-widths and the print verbs"),
        ("03-procedures-and-multiple-returns","Procedures",           "One call, many return values"),
        ("04-strings-and-runes",            "Strings & runes",        "A view over UTF-8 bytes"),
        ("05-arrays-fixed",                 "Fixed arrays",           "[N]T laid out flat in memory"),
        ("05b-enums-and-bit-sets",          "Enums & bit sets",       "One bit per member"),
    ]),
    ("Slices & pointers", [
        ("06-slices",                       "Slices",                 "A 16-byte window onto memory"),
        ("06b-pointers",                    "Pointers",               "Addresses, aliasing, and ^T"),
        ("06c-parameters-and-passing",      "Parameters & passing",   "What a proc can and can't change"),
    ]),
    ("Dynamic data & scope", [
        ("07-dynamic-arrays",               "Dynamic arrays",         "Growth, capacity, and ownership"),
        ("07b-defer",                       "defer",                  "Cleanup that fires at scope exit"),
        ("07c-maps",                        "Maps",                   "Keys, and the silent zero value"),
        ("07d-stack-and-heap",              "Stack & heap",           "Where your values actually live"),
    ]),
    ("Memory & allocators", [
        ("08-context-and-allocators",       "Context & allocators",   "The implicit allocator, threaded in"),
        ("09-arena-allocator",              "Arena allocator",        "One bump cursor, freed all at once"),
    ]),
    ("The type system", [
        ("10-tagged-unions",                "Tagged unions",          "One slot, many shapes, a tag"),
        ("10b-distinct-types",              "Distinct types",         "Same bytes, a brand-new name"),
        ("11-error-handling-or-return",     "Errors & or_return",     "Errors as values, desugared"),
        ("12-structs-and-soa",              "Structs & SoA",          "Array-of-structs vs struct-of-arrays"),
        ("12b-using-and-procedure-groups",  "using & proc groups",    "Flattening names; overload sets"),
        ("13-procedures-as-values",         "Procedures as values",   "A proc held in a variable slot"),
        ("14-parametric-polymorphism",      "Parametric polymorphism","One source, many type stamps"),
    ]),
    ("Systems & workflow", [
        ("15-foreign-and-bindings",         "Foreign bindings",       "Calling across the C ABI line"),
        ("16-when-and-build-flags",         "when & build flags",     "Branches the compiler resolves"),
        ("17-testing-with-core-testing",    "Testing",                "core:testing, pass and fail"),
        ("18-hot-reload-tour",              "Hot reload",             "Swap code while it runs"),
        ("19-search-driven-learning",       "Search-driven learning", "Look it up instead of guessing"),
    ]),
]

# Map each slug to its actual file, and sanity-check curated list vs disk.
files = {f.parent.name: f for f in LESSONS.glob("*/*.html")}
curated = {slug for _, rows in CHAPTERS for slug, _, _ in rows}
missing = curated - files.keys()
extra = files.keys() - curated
if missing: raise SystemExit(f"curated slugs with no HTML file: {sorted(missing)}")
if extra:   raise SystemExit(f"HTML files not in the syllabus: {sorted(extra)}")

OUT.mkdir(exist_ok=True)
for slug, f in files.items():
    shutil.copyfile(f, OUT / f"{slug}.html")

# Build the syllabus markup.
n = 0
blocks = []
for chapter, rows in CHAPTERS:
    items = []
    for slug, name, desc in rows:
        n += 1
        items.append(
            f'      <a class="row" href="{slug}.html">'
            f'<span class="num">{n}</span>'
            f'<span class="name">{name}</span>'
            f'<span class="desc">{desc}</span></a>'
        )
    blocks.append(
        f'    <div class="chap">{chapter}</div>\n'
        f'    <div class="rows">\n' + "\n".join(items) + "\n    </div>"
    )
syllabus = "\n".join(blocks)

index = f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Learn Odin — interactive lesson explainers</title>
<style>
  :root{{
    --paper:#15130f; --card:#1d1a14; --ink:#ece6d8; --muted:#9a9182;
    --rule:#332e24; --accent:#5ec8b8; --accent-soft:#1f342f; --tag:#e0875a;
    --mono:"Cascadia Mono","Cascadia Code",Consolas,ui-monospace,"SF Mono",monospace;
    --serif:-apple-system,"Segoe UI Variable Text","Segoe UI",system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  }}
  *{{box-sizing:border-box}}
  html,body{{margin:0;background:var(--paper);color:var(--ink)}}
  body{{font-family:var(--serif);line-height:1.6;padding:0 20px;-webkit-font-smoothing:antialiased;text-rendering:optimizeLegibility}}
  .page{{max-width:720px;margin:0 auto;padding:54px 0 96px}}
  .kicker{{font-family:var(--mono);font-size:11.5px;letter-spacing:.22em;text-transform:uppercase;color:var(--muted);margin-bottom:10px}}
  h1{{font-size:32px;line-height:1.12;margin:0 0 12px;font-weight:600;letter-spacing:-.01em}}
  .deck{{color:var(--muted);font-size:16.5px;margin:0 0 14px;line-height:1.5;max-width:48em}}
  .deck b{{color:var(--ink)}}

  .chap{{font-family:var(--mono);font-size:12px;letter-spacing:.18em;text-transform:uppercase;color:var(--accent);
    margin:36px 0 6px;display:flex;align-items:center;gap:14px}}
  .chap::after{{content:"";flex:1;height:1px;background:var(--rule)}}

  .row{{display:grid;grid-template-columns:30px 14em 1fr;column-gap:14px;align-items:baseline;
    padding:9px 12px;border-radius:9px;text-decoration:none;color:var(--ink);transition:background .12s}}
  .row:hover{{background:var(--card)}}
  .row:hover .name{{color:var(--accent)}}
  .num{{grid-row:1;font-family:var(--mono);font-size:13px;color:var(--accent);text-align:right;opacity:.85}}
  .name{{font-weight:600;font-size:15.5px;line-height:1.3;transition:color .12s}}
  .desc{{color:var(--muted);font-size:14px;line-height:1.4}}

  footer{{margin-top:46px;padding-top:18px;border-top:1px solid var(--rule);
    font-family:var(--mono);font-size:11.5px;color:var(--muted);line-height:1.7}}

  @media(max-width:560px){{
    .page{{padding:36px 0 72px}}
    h1{{font-size:26px}}
    .row{{grid-template-columns:28px 1fr;row-gap:2px;padding:10px 10px}}
    .desc{{grid-column:2}}
  }}
</style>
</head>
<body>
  <div class="page">
    <div class="kicker">Odin · interactive explainers</div>
    <h1>Learn Odin</h1>
    <p class="deck">{n} interactive lessons. Each opens at <b>level 1</b> — what happens —
      and climbs to the payoff. Every byte, size, and output on the page is verified
      against a real Odin compile. Pick any lesson to start.</p>
{syllabus}
    <footer>Built from the odin_master curriculum · numbers verified via the claim harness.</footer>
  </div>
</body>
</html>
"""
(OUT / "index.html").write_text(index, encoding="utf-8")
print(f"wrote {n} lesson pages + a {len(CHAPTERS)}-chapter syllabus to {OUT}")
