# Local `.spall` viewer options on Windows

**Date:** 2026-07-14  
**Priority:** fully local runtime first; load/render speed above feature breadth and cost

## Recommendation

There are only two credible direct readers of the binary `.spall` files this repo emits:
Spall Native and Spall Web. Do not put Perfetto, Tracy, or Speedscope in the existing-trace path;
none directly reads `.spall`, so each adds conversion, startup time, storage, and failure modes.

1. **Absolute maximum speed: buy Spall Native, then wrap it as `just spall-view <file>`.** It is the
   upstream native Windows reader, has no conversion step, is advertised for larger traces and faster
   loading than the web edition, and the author reports command-line launch. The current download is
   $100, early access, latest listed build `2025_10_13a`, and licensed perpetually for
   **non-commercial** use only; commercial use requires contacting the author. The executable and its
   exact CLI cannot be tested without purchasing it. Confirm that the current build opens this repo's
   version-3 manual traces and performs no license/network check before adopting it. [Official store](https://gravitymoth.itch.io/spall)
   [Author's project page](https://colrdavidson.github.io/#spall)
   [Author's native launch announcement](https://handmade.network/snippet/2200)

2. **Best no-cost repo default: vendor a patched, release-built Spall Web bundle and serve it on
   `127.0.0.1`.** It directly parses the repo's binary format, is MIT-licensed, tiny, and keeps the
   fast binary ingest path. Add `just spall-view <file>` to start a hidden local server and open the
   viewer. For a true one-command experience, add a small local-path/autoload patch; otherwise the user
   must drag/drop the file. The upstream repository was archived on 2026-01-13, so pin the source commit,
   patches, built assets, and license in this repo rather than downloading at runtime. [Spall Web source
   and status](https://github.com/colrdavidson/spall-web)

Use the existing Tracy integration **in addition**, for live/long-running sessions. Do not replace
one-shot `.spall` capture with Tracy across the board: Spall is the faster path from a self-contained
file to a timeline, while Tracy is a live client/server workflow with broader analysis features.

## What was verified locally

- The current trace `claims/tele/p8-scope-spall/zoned.spall` is manual Spall **version 3**: magic
  `0x0BADF00D`, version `3`, 1,252 bytes. This matches Odin's current `core:prof/spall` header and event
  structures. [Odin package docs](https://pkg.odin-lang.org/core/prof/spall/)
- At archived Spall Web commit `9403174cbefb01f49370bc352d67adb0c4eea948`, its parser explicitly
  accepts manual versions 1 and 3 and its format declarations match Odin's version-3 stream. [Pinned
  parser](https://github.com/colrdavidson/spall-web/blob/9403174cbefb01f49370bc352d67adb0c4eea948/src/config.odin#L454-L475)
  [Pinned format declarations](https://github.com/colrdavidson/spall-web/blob/9403174cbefb01f49370bc352d67adb0c4eea948/formats/spall/spall.odin)
- Unmodified source does **not** build with this machine's Odin
  `dev-2026-04-nightly:a896fb2`. Two small compatibility edits made it build in 2.1 seconds:
  change the rejected `1e5000` sentinel to `1e300`, and remove an unused `core:os` import that current
  Odin rejects for `js_wasm64p32`. These were test-only edits under `C:\tmp`, not repo changes.
- The release bundle is four files totaling about 1.31 MB (`spall.html`, `spall.js`, `spall.wasm`,
  `wasm_runtime.js`) and returned HTTP 200 from a localhost-only Python server.
- The generated HTML still references Google Fonts and MaxCDN Font Awesome. Strip those four `<link>`
  elements and use system fonts/icons, or vendor the assets, to eliminate all external requests. The
  WASM `fetch()` is relative and remains localhost-only.
- Browser automation was unavailable, so the final drag/drop gesture was not executed. Format-header,
  parser-version, release-build, static-asset, and localhost-serving compatibility were verified.

## Ranked options

| Rank | Option | Reads this `.spall` directly? | Local Windows runtime | Speed evidence | Cost/license/status | Setup and open-file behavior |
|---:|---|---|---|---|---|---|
| 1 | **Spall Native** | Yes; store explicitly lists Odin manual tracing | Downloadable native Windows app | Author reports 500 MB / ~4M-event binary ingest around 0.5 s and 165+ FPS navigation with billions of events; native handles larger files than web | $100; proprietary perpetual non-commercial license; commercial license by contact; early access; newest listed build 2025-10-13a | Lowest runtime complexity after purchase. Author reports CLI launch, but current syntax and offline license behavior are not public/tested. [Store](https://gravitymoth.itch.io/spall) [Author page](https://colrdavidson.github.io/#spall) |
| 2 | **Vendored Spall Web release bundle** | Yes; parser accepts v3 | Yes: static files served on `127.0.0.1`; Edge/Chrome browser | Upstream claims 500 MB `.spall` loads in 1–2 s, 165+ FPS pan/zoom, and binary ingest is about 10× faster than JSON | MIT; free; upstream archived 2026-01-13, so maintenance becomes ours | Tested build needs two trivial patches. Upstream is drag/drop; add a tiny autoload patch for `just spall-view <file>`. Strip/vendor external fonts. [README](https://github.com/colrdavidson/spall-web#readme) [build script](https://github.com/colrdavidson/spall-web/blob/master/build.py) |
| 3 | **Tracy, for newly captured traces** | **No** | Yes; native GUI and client/server are local | Tracy uses compact, delta-encoded, deduplicated, compressed trace storage; upstream gives a billion-zone/350 MB example. This is not a direct apples-to-apples Spall UI benchmark. | BSD-3; actively maintained; Windows binaries published with releases | Best as a live workflow, not a `.spall` viewer. Current Tracy imports only Chrome JSON and Fuchsia, not Spall. [Project](https://github.com/wolfpld/tracy) [import sources](https://github.com/wolfpld/tracy/tree/master/import/src) [license](https://github.com/wolfpld/tracy/blob/master/LICENSE) |
| 4 | **Speedscope plus a Spall converter** | No | Yes; self-contained release opens locally, and its CLI accepts a profile path | Interactive WebGL viewer, but no direct Spall fast path; conversion expands and parses JSON | MIT; free; maintained | Easy offline distribution and good aggregate views, but requires us to write/maintain a converter. [Official README](https://github.com/jlfwong/speedscope#readme) |
| 5 | **Perfetto plus a Spall converter** | No | UI can work offline after loading; strict self-hosting is possible | Designed for very large traces and SQL analysis, but conversion removes Spall's binary-ingest advantage | Apache-2.0; free; actively maintained | Perfetto opens Chrome Trace JSON directly, not Spall. Building its UI is dependency-heavy and **cannot be done natively on Windows**; official instructions require WSL 2. [Supported external formats](https://perfetto.dev/docs/getting-started/other-formats) [build instructions](https://perfetto.dev/docs/contributing/build-instructions) [license/project](https://github.com/google/perfetto) |

Performance numbers above are upstream claims, not a controlled benchmark on this machine. The useful
relative fact is architectural: direct Spall readers ingest the compact binary stream, while the other
options require conversion. Spall's own example describes a 180 MB binary trace versus 526 MB JSON and
says binary ingest is roughly 10× faster. [Spall Web README]
(https://github.com/colrdavidson/spall-web#heads-up)

## Tracy assessment for this repo

The repo already vendors Tracy **0.10 source and Odin bindings**, and `tele` can emit Tracy zones with
`-define:INSTRUMENT=tracy`. However, `just tracy-build` builds only the client library
(`tracy.lib`), not `Tracy.exe`; the GUI source is present but still needs a matching build or binary.
Tracy protocol/file versions should stay matched between the 0.10 client and viewer.

For existing `.spall` files, Tracy is a poor bridge:

1. Current upstream Tracy has only `import-chrome` and `import-fuchsia`; no Spall importer. The Chrome
   importer CLI is `import-chrome input.json output.tracy`. [Importer source]
   (https://github.com/wolfpld/tracy/blob/master/import/src/import-chrome.cpp#L42-L61)
2. The repo's vendored Tracy 0.10 predates/does not contain that import tool.
3. Therefore the practical bridge is `.spall -> Chrome JSON -> .tracy`, which creates a large
   intermediate file and parses the entire trace twice. It is the opposite of a speed-first design.

For **future** traces, direct Tracy emission is worthwhile when the viewer is already open and the
goal is live inspection, flame graphs, plots, allocations, locks, or long steady-state runs. Keep
Spall for startup/single-frame captures, portable files, and the shortest offline open path. If Tracy
becomes the default live tool, first update the vendored client/viewer as one versioned unit and add a
recipe that builds/starts the GUI; do not silently pair the old client with a newer viewer.

## Rejected or secondary designs

- **Write `.spall -> Chrome JSON` and use Perfetto/Tracy/Speedscope.** Straightforward because Odin
  publishes the v3 packed structs, but JSON repeats names and numbers, expands files substantially,
  and loses the direct binary speed advantage. Keep only as an interoperability export.
- **Write a direct `.spall -> .tracy` converter.** Avoids JSON but couples us to Tracy's internal,
  versioned file model and duplicates an importer upstream does not maintain. Too much ownership for a
  viewing problem.
- **Build a new native viewer.** Could eventually be fastest, but reproduces timeline layout,
  hit-testing, zoom/pan, statistics, text rendering, and huge-trace indexing. Both direct upstream
  readers already solve this.
- **Wrap Spall Web in Electron/Tauri/WebView2.** Adds build/package/runtime surface without improving
  parsing or rendering. A hidden `127.0.0.1` server plus the installed browser is smaller and faster to
  launch.
- **Use `file://` for Spall Web.** The WASM module is loaded with `fetch()`, so a localhost server is
  the least surprising cross-browser path. No internet is involved.

## Suggested implementation shape

1. Vendor the patched **release dist**, MIT license, pinned upstream commit, patch notes, and no remote
   font/icon references.
2. Add one deliberately boring launcher and recipe:
   `just spall-view [trace='claims/tele/p8-scope-spall/zoned.spall']`.
3. Bind only `127.0.0.1`, choose a fixed local port, start the server hidden, open the viewer, and give
   a clear error for a missing trace.
4. For true one-command opening, serve the selected trace under a fixed local URL and patch the viewer
   to autoload that URL. Do not copy or convert the trace.
5. Add a smoke claim that checks the four vendored assets, version-3 parser support, and a localhost
   HTTP 200. Browser visual automation is optional.
6. If Spall Native is purchased and passes an offline smoke test, make the launcher prefer its local
   executable and retain Spall Web as the free/fallback reader.
