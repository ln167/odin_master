package main

import "core:fmt"

// This lesson has no code to write. The work is in the comments below:
// five research questions to answer using the lookup chain in README.md,
// NOT by asking an AI.
//
// For each question, walk the chain:
//   1. content/domains/odin/compiled/INDEX.md
//   2. just substrate-search "your question"      (hybrid)
//   3. just substrate-search --bm25 "exact term"  (BM25)
//   4. the relevant lesson README
//   5. odin-lang.org/docs/overview/  (Ctrl-F)
//   6. pkg.odin-lang.org/core/<package> or /base/builtin or /base/intrinsics
//   7. the Odin source under ~/odin/dist/core/ or vendor/
//
// Stop at whatever rung answers the question. Write the answer down
// somewhere (a notes file, a comment, anywhere) -- if you don't externalize
// it, you'll be looking it up again next week.
//
// ---- THE QUESTIONS ----
//
// Q1. What are the sizes of `string` and `cstring` on a 64-bit machine?
//     Why is one bigger than the other? (Hint: one carries a length, the
//     other is null-terminated.)
//
// Q2. Pick one core package you have never used. Read its overview at
//     pkg.odin-lang.org/core/<package>. In one sentence, what is it for
//     and when would you reach for it? Candidates if you can't think of
//     one: core:time, core:hash, core:encoding/json, core:net, core:os2.
//
// Q3. Lesson 10 mentioned `union #no_nil`. Without re-reading lesson 10:
//     search the corpus or the official docs for the difference between
//     a plain `union` and a `union #no_nil`. What is the practical effect
//     on the type's possible values, and on the switch you write over it?
//
// Q4. Find one proc in `core:slice` you didn't know existed. (There are
//     dozens; pick the first one whose name you don't recognize.) Read
//     its signature and doc-comment. When would you use it instead of
//     writing a hand-rolled loop?
//
// Q5. The compiled INDEX.md mentions a "compiled/from-query/" directory.
//     Open it, list the files, and read one. What's the format? If you
//     had to add a new entry for a question you've answered yourself,
//     what would the filename and structure look like?
//
// ---- AFTER YOU'VE ANSWERED THEM ----
//
// Notice which rung of the chain answered each question. If you
// jumped to a chat box for any of them, retry -- the answer is in the
// docs/corpus, you just need to find it.

main :: proc() {
	fmt.println("research mode -- answers live in your notes, not in stdout")
}
