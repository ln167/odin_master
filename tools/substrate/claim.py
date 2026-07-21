#!/usr/bin/env python3
"""Run a claim (one, or all under tests/ + claims/) and report a verdict.

A claim is a directory. Its claim.txt (one line) picks the assertion:
  compiles <file>            build must succeed
  fails <file> [substr...]   build must fail (and substr must appear in the build output)
  panics <file> [substr...]  build must succeed, then the run must crash nonzero (substr in output)
  test [substr...]           `odin test .` must pass (exit 0, and substr in its output)
  test-fails [substr...]     build ok, then `odin test .` must FAIL (exit nonzero, substr in output)
  output [<file>]            run; stdout must equal expected.txt
  equiv                      build fused variant_A/variant_B; both must print equal output
  faster [k]                 time fused variant_A/variant_B; B must be >= k x faster (k=DEFAULT_K)
No claim.txt + main.odin + expected.txt  ==  output  (every existing tests/ dir).

A claim dir may hold a flags.txt: its whitespace-split tokens are spliced into the odin
build/run/test command (e.g. `-define:MY_FEATURE=true`, `-target:linux_amd64`). This lets a
claim pin a build-flag-dependent outcome -- a #config override, a cross-compile -- without
hardcoding it in the harness.

<file> is a single .odin file (built with -file), or "." to build the whole directory
as a package -- for multi-file/multi-package lessons (e.g. `output .`, `fails . <substr>`).

equiv / faster witness: a `package main` file (variant.odin by convention) with two procs.
  equiv:  variant_A :: proc() -> T   and   variant_B :: proc() -> T   (T printable, deterministic)
  faster: variant_A :: proc() -> u64 and   variant_B :: proc() -> u64 (return a work-derived sink)
For both the harness generates the main dispatcher and builds the dir once. equiv runs each
variant and diffs normalized stdout. faster (built -o:speed) times them in-process, interleaved,
min-of-N over two batches; A is the baseline, B the candidate that should be faster.

Verdicts: PASS / FAIL / INCONCLUSIVE. faster returns INCONCLUSIVE (exit 2) when the measured
speedup is inside this box's noise band, the two batches disagree on ordering, or the run was
too noisy -- it refuses to certify sub-noise micro-wins rather than fake them.
"""
import re
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
ROOTS = [ROOT / "tests", ROOT / "claims"]
PIN = (ROOT / ".odin-version").read_text(encoding="utf-8").strip()

# Standing collection so any fixture can `import "odin_lib:tele"` (and friends) without
# per-claim wiring. Harmless to claims that don't import it -- Odin ignores unused collections.
COLL = f"-collection:odin_lib={ROOT / 'tools' / 'domains' / 'odin' / 'odin_lib'}"

# --- faster verdict tunables (one place) --------------------------------------
DEFAULT_K     = 1.5   # speedup factor B must beat when claim.txt omits k
NOISE         = 1.15  # ~+/-15% run-to-run band on this box; speedups inside it are unprovable
MAX_MIN_RATIO = 2.0   # a variant whose max/min exceeds this is too noisy this run -> INCONCLUSIVE
# (the timing-loop knobs BENCH_WARMUP / BENCH_N / SINK_MUL are named in the dispatcher below)

# Build artifacts written by `-out:.bin`. Cleaned before each fused build so the produced
# executable is found unambiguously (Odin keeps `.bin` here; `.bin.exe` is a cross-platform guard).
ARTIFACTS = (".bin", ".bin.exe", ".bin.pdb")

# Generated dispatchers for equiv/faster. Filename must not start with '_' (Odin excludes
# those from package builds). One package, one runtime; equiv dispatches on argv[1].
DISPATCH_NAME = "gen_dispatch.odin"
DISPATCH_EQUIV = (
    'package main\n\n'
    'import "core:fmt"\n'
    'import "core:os"\n\n'
    'main :: proc() {\n'
    '\tswitch os.args[1] {\n'
    '\tcase "A": fmt.println(variant_A())\n'
    '\tcase "B": fmt.println(variant_B())\n'
    '\t}\n'
    '}\n'
)
# In-process interleaved timer. Every return is folded into a rolling-hash sink that is printed,
# so -o:speed cannot dead-code the kernels into a bogus "infinitely faster" pass. Two batches =>
# ordering must agree. SINK_MUL is an arbitrary odd multiplier for the hash.
DISPATCH_FASTER = (
    'package main\n\n'
    'import "core:fmt"\n'
    'import "core:time"\n\n'
    'BENCH_WARMUP :: 3\n'
    'BENCH_N :: 15\n'
    'SINK_MUL :: 1000003\n\n'
    'bench_batch :: proc() -> (min_a, max_a, min_b, max_b: i64, sink: u64) {\n'
    '\tmin_a = max(i64); min_b = max(i64)\n'
    '\tfor _ in 0 ..< BENCH_WARMUP {\n'
    '\t\tsink = sink * SINK_MUL + variant_A()\n'
    '\t\tsink = sink * SINK_MUL + variant_B()\n'
    '\t}\n'
    '\tfor _ in 0 ..< BENCH_N {\n'
    '\t\tta := time.tick_now()\n'
    '\t\tsink = sink * SINK_MUL + variant_A()\n'
    '\t\tda := i64(time.tick_diff(ta, time.tick_now()))\n'
    '\t\ttb := time.tick_now()\n'
    '\t\tsink = sink * SINK_MUL + variant_B()\n'
    '\t\tdb := i64(time.tick_diff(tb, time.tick_now()))\n'
    '\t\tif da < min_a { min_a = da }\n'
    '\t\tif da > max_a { max_a = da }\n'
    '\t\tif db < min_b { min_b = db }\n'
    '\t\tif db > max_b { max_b = db }\n'
    '\t}\n'
    '\treturn\n'
    '}\n\n'
    'main :: proc() {\n'
    '\ts: u64 = 0\n'
    '\ta1, x1, b1, y1, k1 := bench_batch(); s = s * SINK_MUL + k1\n'
    '\ta2, x2, b2, y2, k2 := bench_batch(); s = s * SINK_MUL + k2\n'
    '\tfmt.printf("batch1 %d %d %d %d\\n", a1, x1, b1, y1)\n'
    '\tfmt.printf("batch2 %d %d %d %d\\n", a2, x2, b2, y2)\n'
    '\tfmt.printf("sink %d\\n", s)\n'
    '}\n'
)

def normalize(s: str) -> str:
    return "\n".join(line.rstrip() for line in s.splitlines()).strip("\n")

def output_matches(actual: str, expected: str) -> bool:
    # Exact line-by-line, except a `<...>` token in an expected line is a wildcard
    # matching any text (for nondeterministic output like a runtime address). Opt-in:
    # only lines that contain `<...>` are treated as patterns; everything else is exact.
    a_lines, e_lines = actual.split("\n"), expected.split("\n")
    if len(a_lines) != len(e_lines):
        return False
    for a, e in zip(a_lines, e_lines):
        if "<" in e and ">" in e:
            pat = "".join(".*" if p.startswith("<") and p.endswith(">") else re.escape(p)
                          for p in re.split(r"(<[^>]*>)", e))
            if not re.fullmatch(pat, a):
                return False
        elif a != e:
            return False
    return True

def run(cmd, cwd=None):
    # Odin always emits UTF-8; force UTF-8 decoding. Windows would otherwise use cp1252 and
    # split multi-byte runes in program output, mismatching the UTF-8 expected.txt.
    return subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, encoding="utf-8")

def check_toolchain():
    have = run(["odin", "version"]).stdout.strip()
    if PIN not in have:
        sys.exit(f"toolchain drift: .odin-version wants '{PIN}', got '{have}'")

def build(d, src, extra=()):
    # src == "." builds the whole directory as a package (multi-file/package lessons);
    # any other value is a single file via the -file shortcut. `extra` are per-claim flags.
    flags = [] if src == "." else ["-file"]
    return run(["odin", "build", src, *flags, *extra, COLL, "-o:none", "-out:.bin"], cwd=d)

def build_dir(d, opt="none"):
    return run(["odin", "build", ".", COLL, f"-o:{opt}", "-out:.bin"], cwd=d)

def clean_artifacts(d):
    for a in ARTIFACTS:
        (d / a).unlink(missing_ok=True)

def find_exe(d):
    p = d / ".bin"
    return p if p.exists() else d / ".bin.exe"

def parse_batches(stdout):
    rows = []
    for line in stdout.splitlines():
        t = line.split()
        if len(t) == 5 and t[0] in ("batch1", "batch2"):
            rows.append(tuple(int(x) for x in t[1:]))  # (minA, maxA, minB, maxB)
    return rows

def faster_verdict(rows, k):
    if len(rows) != 2:
        return "INCONC", "could not parse two timing batches from the witness"
    ratios = []
    for (minA, maxA, minB, maxB) in rows:
        if minA <= 0 or minB <= 0:
            return "INCONC", "a kernel was too fast to time (min == 0 ns); raise the work size"
        if maxA / minA > MAX_MIN_RATIO or maxB / minB > MAX_MIN_RATIO:
            return "INCONC", f"machine too noisy this run (a variant's max/min exceeded {MAX_MIN_RATIO})"
        ratios.append(minA / minB)  # > 1 => B faster than A
    r1, r2 = ratios
    if (r1 > 1.0) != (r2 > 1.0):
        return "INCONC", f"batches disagree on ordering (B/A = {r1:.2f}x vs {r2:.2f}x)"
    r = min(r1, r2)  # report the conservative (worse) batch
    if r <= NOISE and k <= NOISE:
        return "INCONC", f"speedup {r:.2f}x is within this box's ~{int((NOISE-1)*100)}% noise; k={k} is below the floor"
    if r1 >= k and r2 >= k:
        return "PASS", f"B is {r:.2f}x faster than A (both batches >= {k}x)"
    return "FAIL", f"B is only {r:.2f}x faster than A; the claim needs {k}x"

def label(d):
    # display/report name: path relative to its root (e.g. "lessons/10-tagged-unions/solution"),
    # so nested claims don't all collapse to a bare "solution"/"break-*".
    for root in ROOTS:
        try:
            return d.relative_to(root).as_posix()
        except ValueError:
            continue
    return d.name

def run_one(d: Path):
    name = label(d)
    decl = d / "claim.txt"
    if decl.exists():
        parts = decl.read_text(encoding="utf-8").split()
        kind, args = parts[0], parts[1:]
    else:
        kind, args = "output", []
    # Optional per-claim build/run flags (e.g. -define:..., -target:...).
    fl = d / "flags.txt"
    extra = fl.read_text(encoding="utf-8").split() if fl.exists() else []
    clean_artifacts(d)  # every claim starts from a clean dir — one place, all kinds

    if kind == "compiles":
        r = build(d, args[0], extra)
        if r.returncode == 0:
            return "PASS", [f"PASS  {name}  (compiles)"]
        return "FAIL", [f"FAIL  {name}  (compiles)", f"  {normalize(r.stderr)}"]

    if kind == "fails":
        r = build(d, args[0], extra)
        substr = " ".join(args[1:])
        out = normalize(r.stderr + "\n" + r.stdout)  # Odin errs on stderr; the MSVC linker errs on stdout
        if r.returncode != 0 and substr in out:
            return "PASS", [f"PASS  {name}  (fails as expected)"]
        why = "it compiled" if r.returncode == 0 else f"substr {substr!r} not in build output"
        return "FAIL", [f"FAIL  {name}  (fails)", f"  {why}"]

    if kind == "panics":
        b = build(d, args[0], extra)
        if b.returncode != 0:
            return "FAIL", [f"FAIL  {name}  (panics)", f"  expected a runtime panic, but the build failed: {normalize(b.stderr)}"]
        substr = " ".join(args[1:])
        r = run([str(find_exe(d))], cwd=d)
        out = normalize(r.stderr + "\n" + r.stdout)
        if r.returncode != 0 and substr in out:
            return "PASS", [f"PASS  {name}  (panics as expected)"]
        why = "it exited 0 (no panic)" if r.returncode == 0 else f"substr {substr!r} not in output"
        return "FAIL", [f"FAIL  {name}  (panics)", f"  {why}"]

    if kind == "test":
        substr = " ".join(args)
        r = run(["odin", "test", ".", *extra, COLL, "-out:.bin"], cwd=d)
        out = normalize(r.stderr + "\n" + r.stdout)  # the test runner reports on stderr
        if r.returncode == 0 and substr in out:
            return "PASS", [f"PASS  {name}  (tests pass)"]
        why = f"odin test exited {r.returncode}" if r.returncode != 0 else f"substr {substr!r} not in output"
        return "FAIL", [f"FAIL  {name}  (test)", f"  {why}"]

    if kind == "test-fails":
        substr = " ".join(args)
        r = run(["odin", "test", ".", *extra, COLL, "-out:.bin"], cwd=d)
        out = normalize(r.stderr + "\n" + r.stdout)  # the test runner reports on stderr
        if r.returncode != 0 and substr in out:
            return "PASS", [f"PASS  {name}  (tests fail as expected)"]
        why = "odin test exited 0 (no failure)" if r.returncode == 0 else f"substr {substr!r} not in output"
        return "FAIL", [f"FAIL  {name}  (test-fails)", f"  {why}"]

    if kind == "output":
        src = args[0] if args else "main.odin"
        flags = [] if src == "." else ["-file"]
        r = run(["odin", "run", src, *flags, *extra, COLL, "-out:.bin"], cwd=d)
        if r.returncode != 0:
            # build failed or the program crashed -- never a vacuous empty==empty pass.
            return "FAIL", [f"FAIL  {name}  (output)", f"  run exited {r.returncode}: {normalize(r.stderr)}"]
        actual = normalize(r.stdout)
        expected = normalize((d / "expected.txt").read_text(encoding="utf-8"))
        if output_matches(actual, expected):
            return "PASS", [f"PASS  {name}"]
        lines = [f"FAIL  {name}", f"  expected: {expected!r}", f"  actual:   {actual!r}"]
        if r.returncode != 0:
            lines.append(f"  stderr:   {normalize(r.stderr)!r}")
        return "FAIL", lines

    if kind == "equiv":
        (d / DISPATCH_NAME).write_text(DISPATCH_EQUIV, encoding="utf-8")
        b = build_dir(d)
        if b.returncode != 0:
            return "FAIL", [f"FAIL  {name}  (equiv)", f"  build failed: {normalize(b.stderr)}"]
        exe = str(find_exe(d))
        ra = run([exe, "A"], cwd=d)
        rb = run([exe, "B"], cwd=d)
        oa, ob = normalize(ra.stdout), normalize(rb.stdout)
        if ra.returncode == 0 and rb.returncode == 0 and oa == ob:
            return "PASS", [f"PASS  {name}  (equiv)"]
        lines = [f"FAIL  {name}  (equiv)"]
        if ra.returncode != 0 or rb.returncode != 0:
            lines.append(f"  ran nonzero: A exit {ra.returncode}, B exit {rb.returncode}")
            for tag, r in (("A", ra), ("B", rb)):
                if r.stderr.strip():
                    lines.append(f"  {tag} stderr: {normalize(r.stderr)!r}")
        else:
            lines.append(f"  A printed: {oa!r}")
            lines.append(f"  B printed: {ob!r}")
        return "FAIL", lines

    if kind == "faster":
        try:
            k = float(args[0]) if args else DEFAULT_K
        except ValueError:
            return "FAIL", [f"FAIL  {name}  (faster)", f"  bad k {args[0]!r} (want a number)"]
        (d / DISPATCH_NAME).write_text(DISPATCH_FASTER, encoding="utf-8")
        b = build_dir(d, "speed")
        if b.returncode != 0:
            return "FAIL", [f"FAIL  {name}  (faster)", f"  build failed: {normalize(b.stderr)}"]
        r = run([str(find_exe(d))], cwd=d)
        if r.returncode != 0:
            return "FAIL", [f"FAIL  {name}  (faster)", f"  run crashed: {normalize(r.stderr)}"]
        verdict, why = faster_verdict(parse_batches(r.stdout), k)
        return verdict, [f"{verdict}  {name}  (faster {k}x)", f"  {why}"]

    return "FAIL", [f"FAIL  {name}  (unsupported claim kind '{kind}')"]


def run_one_safe(d: Path):
    try:
        return run_one(d)
    except Exception as error:
        return "FAIL", [f"FAIL  {label(d)}", f"  harness error: {type(error).__name__}: {error}"]


def is_claim_dir(d: Path):
    return d.is_dir() and ((d / "claim.txt").is_file() or (d / "main.odin").is_file())


def discover():
    # A claim is any directory holding a claim.txt or a main.odin. Walk the tree so claims
    # can nest (e.g. claims/lessons/NN-slug/<claim>/); a claim dir is a leaf, don't descend into it.
    out = []
    def walk(d):
        if is_claim_dir(d):
            out.append(d)
            return
        for sub in sorted(d.iterdir()):
            if sub.is_dir():
                walk(sub)
    for root in ROOTS:
        if root.is_dir():
            walk(root)
    return out

EXIT = {"PASS": 0, "FAIL": 1, "INCONC": 2}

def main():
    check_toolchain()
    if len(sys.argv) > 1:
        name = sys.argv[1]
        d = next((r / name for r in ROOTS if is_claim_dir(r / name)), None)
        if d is None:
            print(f"claim not found: {name}", file=sys.stderr)
            return 1
        status, lines = run_one(d)
        print("\n".join(lines))
        return EXIT[status]
    claims = discover()
    if not claims:
        print("no claims found under tests/ or claims/")
        return 0
    total = len(claims)
    print(f"running {total} claims...", flush=True)
    passed = inconc = failed = 0
    with ThreadPoolExecutor(max_workers=4) as ex:
        futures = [ex.submit(run_one_safe, claim) for claim in claims]
        for done, future in enumerate(as_completed(futures), 1):
            status, lines = future.result()
            print("\n".join(lines))
            print(f"[{done}/{total}]", flush=True)
            passed += status == "PASS"
            inconc += status == "INCONC"
            failed += status == "FAIL"
    tail = f"\n{passed}/{total} passed"
    if inconc:
        tail += f", {inconc} inconclusive"
    if failed:
        tail += f", {failed} failed"
    print(tail)
    return 0 if failed == 0 else 1

if __name__ == "__main__":
    sys.exit(main())
