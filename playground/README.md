# Playground

Throwaway scratch directory for "I want to try a thing." Nothing here is
tracked except `scratch.odin` and this README — every other `*.odin` file
is gitignored.

## Run a file

    odin run scratch.odin -file

Or in LazyVim, with the file open: `<leader>or`.

## Open scratch from anywhere

`<leader>op` — opens `playground/scratch.odin` in the current window.

Format-on-save still works here (odinfmt). LSP works. The lessons track
also works, but the playground exists so you don't have to scaffold a
lesson directory just to test one thing.
