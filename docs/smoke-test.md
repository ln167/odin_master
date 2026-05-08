# Substrate End-to-End Smoke Test

Runbook to verify the substrate works after the 2026-05-04 redesign.

User-facing commands are `just <recipe>` (or `python tools/substrate/<tool>.py` directly). The spec's `odin-master <verb>` notation is shorthand — there is no `odin-master` CLI binary in v1.

## Steps

### 1. Cold start (update fetcher deferred for v1)

The update fetcher pipeline lived in the deleted `tools/indexer/` and is deferred for v1 (see spec § Open questions). For v1, `source/raw/` is already populated by the migration. Verify:

```sh
ls content/domains/odin/source/raw
# expect: tier1-authoritative, tier2-curated, tier3-community
```

### 2. Provenance check

```sh
just doctor-provenance odin
```

Expected: report; if `compiled/` is empty, no stale-page errors.

### 3. Compile via skill (interactive)

Invoke the odin skill in Claude Code: "compile the odin domain"

Expected:
- `compiled/from-ingest/` populated with concept + summary pages
- Every page has `provenance: from-ingest` in frontmatter
- `compiled/INDEX.md` regenerated with "From ingest" section
- `log.md` gains `## compile` entry

### 4. Doctor (post-compile)

```sh
just doctor
```

Expected: PASS.

### 5. Structural test

```sh
just substrate-test odin
# (will run both structural and semantic; for structural-only:
#  python tools/substrate/test.py --structural --domain odin)
```

Expected: PASS for the structural block.

### 6. Non-trivial query (interactive)

Invoke odin skill: "how does context.allocator interact with hot reload?"

Expected:
- Cited answer in chat
- New page at `compiled/from-query/concepts/<slug>.md` with `provenance: from-query`
- `log.md` gains `## query | "how does context.allocator interact with hot reload?"` entry

### 7. Trivial query (interactive)

Invoke odin skill: "what's the signature of `os.read_entire_file`?"

Expected:
- Cited answer in chat
- NO new page in `compiled/from-query/`
- NO log entry

### 8. Semantic test

```sh
python tools/substrate/test.py --semantic --domain odin
```

Expected: most or all gold queries pass (some failures acceptable for the first run if the wiki is sparse — note them).

### 9. Promote (interactive — pick a representative compiled page first)

```sh
ls content/domains/odin/compiled/from-ingest/
just substrate-promote content/domains/odin/compiled/from-ingest/concepts/<some-page>.md
```

Expected:
- File moved to `vault/<page-type>/<page>.md`
- Frontmatter has `frozen: true`, `original_provenance: from-ingest`
- `INDEX.md` link updated (next Compile re-sections it cleanly)
- `log.md` gains `## promote` entry

### 10. Doctor (post-promote)

```sh
just doctor
```

Expected: PASS — cross-references to promoted page now point to `vault/`.

### 11. Lint via skill (interactive)

Invoke odin skill: "lint the wiki"

Expected: lint report printed; any contradictions appended to `source/contradictions.md` as `[pending]`; `log.md` gains `## lint` entry.

### 12. New domain

```sh
just new-domain test-domain
```

Expected: shell created at `content/domains/test-domain/` with notes/, from-ingest/, from-query/; skill stub at `.claude/skills/test-domain/SKILL.md`; manifest commented hint appended.

### 13. Doctor on empty shell

```sh
just doctor test-domain
```

Expected: PASS (healthy empty shell).

### 14. Cleanup

```sh
rm -rf content/domains/test-domain
rm -rf .claude/skills/test-domain
# Then manually remove the trailing commented manifest hint in content/manifest.yaml
```

Expected: paths gone.

## Pass criteria

If steps 1–13 all pass, the substrate works end-to-end. 12–13 prove the multi-domain pattern. Step 7 specifically validates the trivial-query escape from the two-outputs rule.
