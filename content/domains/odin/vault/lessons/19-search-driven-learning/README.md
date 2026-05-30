# Lesson 19 - search-driven learning

## Concept

When you have a question about Odin, you have a chain of cheap lookups
available before asking another human (or an AI). They are faster than
asking, more authoritative, and they leave you with a citable path
instead of someone's paraphrase. This lesson teaches the chain.

There is no syntax to learn here. The whole lesson is a habit.

---

## Why this matters

Two reasons, one short-term, one long-term.

**Speed.** For ~70% of questions you'll hit on a working day --
"what does `len()` return for this type", "what's the signature of
`strings.split`", "is there a built-in for X" -- a local search +
docs lookup is faster than typing the question into a chat box and
waiting for a reply. Round-trip latency to a person or an LLM is
seconds-to-minutes. Round-trip to `qmd query` or a Ctrl-F is
milliseconds.

**Retention.** You remember answers you found differently from
answers you were handed. Reading the actual `core:strings` index and
seeing `split` next to `split_after` and `split_n` gives you
peripheral context you'd never get from a single AI reply. That
context is what makes you *fluent* instead of perpetually
question-asking.

The other thing: the AI well runs dry, and the expert well drains
fast. The official docs and the language source code don't. You're
practicing the skill that scales.

---

## The lookup chain (in order)

When you hit a question, walk down this ladder. Stop at the rung that
answers it.

1. **The compiled index** -- `content/domains/odin/compiled/INDEX.md`
   is the substrate's curated navigation map, regenerated on every
   Compile pass. Open it first when you already know roughly *where*
   the answer lives ("the allocators page", "the hot-reload
   template"). It's faster than searching.

2. **Local hybrid search** -- `just substrate-search "your question"`
   runs `qmd query` against the local `odin-source` corpus (official
   site, wiki, `core/`, `vendor/`, Karl Zylinski's blog, gingerBill,
   `odin-examples`). Hybrid mode is BM25 + vector + LLM rerank, so it
   finds pages even when your wording doesn't match the docs'
   wording. Needs embeddings on disk (`qmd embed` once).

3. **Local BM25 search** -- `just substrate-search --bm25 "exact
   term"` is keyword-only, no embeddings needed. Faster than hybrid
   and more precise when you already know the corpus's vocabulary
   ("context allocator", "or_return", "soa struct"). The right tool
   when you can name the thing.

4. **The relevant lesson README** (this curriculum) -- by topic,
   find the lesson, read its `Concept` and `Reference` sections. The
   lessons are written for the question you're probably asking; they
   sit on top of the docs, not next to them.

5. **Odin official overview** (`odin-lang.org/docs/overview/`) --
   Ctrl-F for the keyword. Authoritative on language semantics:
   syntax, control flow, operators, attribute decorators, build
   flags. One long page; the find-in-page is the only navigation you
   need.

6. **Odin core / vendor / base package docs** (`pkg.odin-lang.org/
   core/PACKAGE`, `pkg.odin-lang.org/vendor/PACKAGE`,
   `pkg.odin-lang.org/base/builtin`, `pkg.odin-lang.org/base/
   intrinsics`) -- for any `import "core:X"`, `import "vendor:X"`,
   built-in proc (`len`, `cap`, `size_of`), or compiler intrinsic
   (`typeid_of`, `align_of`, `atomic_load`). Read the index first,
   then jump to the proc.

7. **The Odin source itself** -- the substrate mirrors `core/` and
   `vendor/` under `~/odin/dist/`. For built-in procs whose docs are
   thin, open the actual `.odin` file. Most of `core:strings`,
   `core:slice`, and `core:mem` is more readable than the docs
   summarize.

8. **Search the Odin Discord/Discourse archive** -- historical Q&A.
   When something feels like "surely someone has hit this", they
   have, and the answer is sitting in a forum thread. Also: Google
   with `site:github.com/odin-lang/Odin` to grep the compiler's own
   source.

9. **Ask the Odin community or an AI** -- last resort. By the time
   you've walked 1-8 you can ask a sharper question ("I read X, it
   says Y, but my code does Z, what am I missing") instead of a
   vague one ("how does X work").

The point is the *order*. Skipping straight to step 9 trains the
wrong reflex. Walking 1-3 trains the right one.

---

## Worked examples

Three real questions, with the full lookup chain.

### Example A: "What does `len()` return for a string?"

1. **Compiled index.** Open `INDEX.md`, look for a strings page or a
   built-ins page. Strings page is listed -- skim it. If it mentions
   `len`, you're done.
2. **BM25.** `just substrate-search --bm25 "len string"`. You should
   get the official overview's "Strings" section and `core:strings`.
   The overview will say something like: "len(s) returns the number
   of bytes in the string, not the number of runes."
3. **Confirm in source.** If you want to be sure, open
   `core:unicode/utf8` and find `rune_count_in_string` -- the
   existence of a separate proc for rune-counting confirms that
   `len` is byte-count.
4. **Stop.** Total time: under a minute. You now also know there's a
   separate `utf8.rune_count_in_string` for the other interpretation,
   which you wouldn't have learned by asking the AI for `len`.

### Example B: "How does `or_return` work when the calling proc has no error return?"

1. **Compiled index.** Look for an error-handling page. Lesson 11
   (`11-error-handling-or-return/`) is the curriculum's coverage.
2. **Re-read lesson 11's README.** It explains the rewrite rule
   (`x := foo() or_return` desugars to "assign and return-the-error
   on the failure path"). If lesson 11 covered your case, stop.
3. **Hybrid search.** If lesson 11 didn't cover the case where the
   caller has no error return: `just substrate-search "or_return in
   proc with no error return"`. The hybrid search should surface the
   official overview's error-handling section, which spells out:
   `or_return` requires the enclosing proc to return a compatible
   error value. If the caller has none, this is a compile error.
4. **Confirm with the compiler.** Write a five-line proc with no
   error return, put `x := foo() or_return` in it, run `odin check`,
   read the error message. The compiler's error text is the most
   authoritative answer you'll find.
5. **Stop.** Total time: two or three minutes. You have a working
   minimal reproduction you can keep.

### Example C: "Is there a way to iterate a map's keys?"

1. **Compiled index.** No specific map page jumps out -- but the
   overview's "Map type" section is listed. Open it.
2. **Ctrl-F for "for".** The overview shows `for key, value in m`
   and `for key in m`. The second form is the answer.
3. **Cross-check `pkg.odin-lang.org/base/builtin`.** Look for
   anything map-related (`delete_key`, `cap`, `len`). You'll find
   them, which tells you what else maps support.
4. **Stop.** Total time: under a minute. As a bonus, you now know
   `cap(m)` exists for maps, which most people don't.

---

## Anti-patterns

Short list of habits that slow you down. Watch yourself for these.

- **Asking an AI before checking the docs.** Slower than the docs
  for syntax questions, and the AI sometimes hallucinates Odin
  syntax that looks plausible (it confuses Odin with Go or Jai).
  The docs don't lie.
- **Reading the whole docs page when you only need one section.**
  The Odin overview is long. Use Ctrl-F. Read the surrounding two
  paragraphs of the hit. Don't read top-to-bottom unless you're
  studying for the first time.
- **Skimming an answer without confirming it.** "The AI said X" and
  "I read that X" are both worthless until you've run code and
  watched X happen. Always confirm with a five-line repro before
  building on the answer.
- **Searching with your own vocabulary when BM25 wants the corpus's.**
  If `--bm25 "the variable that holds the allocator"` gets you
  nothing, the corpus calls that thing `context`. Drop `--bm25`
  for hybrid mode, or refine your terms.
- **Asking the same question twice in a week.** If you've looked up
  the same thing more than once, that's a signal to file the answer
  to `content/domains/odin/compiled/from-query/` so future-you (and
  future-search) gets it for free.

---

## Tasks

Open `main.odin`. The file is intentionally minimal -- a single proc
with no real work. The "tasks" are research questions in the
comments. For each one, walk the lookup chain. The answer lives in
your notes (or in your head), not in the program output.

When you're done:

    odin run main.odin -file

It will print one line confirming you ran it. The point isn't the
output; the point is that you found five answers without asking an
AI.

---

## Building the muscle

The goal isn't to never ask for help. The goal is to ask *after* the
cheap lookups have failed, with a sharper question than you'd have
asked otherwise.

Give yourself a week of practice on the chain. By the end of it
you'll find that for most questions, walking 1-3 is faster than
typing the question into a chat box. The AI becomes the synthesis
tool you reach for when you've already done the cheap reading and
need help connecting pieces -- which is what it's actually good at.

The substrate has a **two-outputs rule**: when you arrive at an
answer worth keeping, file the distilled version back to
`content/domains/odin/compiled/from-query/`. The corpus grows by use.
Every answer you write down is one your future self doesn't have to
re-derive, and one the search index can return for you.

End of curriculum. From here, the reps come from real projects, the
**break-it** sections of earlier lessons, and the search habit you
just built.
