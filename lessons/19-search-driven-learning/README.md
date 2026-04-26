# Lesson 19 — search-driven learning  *(stub)*

## Concept
The `odin-search` corpus is your first stop, not Google. ~13k chunks
across the official site, the wiki, `core`/`vendor`, Karl Zylinski's
posts, gingerBill's posts, and odin-examples — all indexed locally.

## TODO
- [ ] Try `odin-search "tagged union" --top 5`.
- [ ] Compare `--keyword-only` vs the default hybrid (BM25+vector).
- [ ] Filter by tier: `--tier 1` for official only.
- [ ] Filter by source: `--source odin-examples`.
- [ ] Use the clickable `path:line` footer to jump to the file in your
      terminal.
- [ ] In LazyVim: `<leader>os` opens the picker.

## Workflow recipe
When you hit something you don't understand:
1. `odin-search "<thing>" --top 5`
2. Open the top result.
3. If it's a wiki concept, follow its backlinks.
4. If it's a code example, copy the snippet into `playground/scratch.odin`
   and `<leader>or` to run it.

## You're done with the track
Loop back to whichever stub you want to flesh out next.
