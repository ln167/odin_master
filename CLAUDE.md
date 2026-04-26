# Notes for LLM agents working in this repo

This is the `odin_master` template. The design spec is at
`docs/superpowers/specs/2026-04-19-odin-master-template-design.md`.

To search the corpus, use the `odin-search` CLI:

    odin-search "<query>" --json

The `odin-master` Python CLI handles cold-path tasks (index, summarize, scaffold,
template self-update, doctor, etc.). See `odin-master --help`.

## Git / VCS policy

Never run `git commit`, `git push`, `git merge`, `git rebase`, `git reset`,
branch/tag mutations, PR creation, or any other VCS-mutating action unless
the user has explicitly told you to in this conversation. Read-only inspection
(`git status`, `git diff`, `git log`) is fine.
