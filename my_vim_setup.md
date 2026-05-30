# My vim setup

A small set of opinionated tweaks applied to **both** Neovim and Zed (vim
mode), so muscle memory carries between editors. This file documents what
they do and why.

If a binding stops working in one editor, the truth is whatever the editor
shows you — this file is the design intent, not a guarantee about state.

## Where the actual config lives

- **Neovim**: `~/AppData/Local/nvim/lua/config/keymaps.lua` (keymaps),
  `~/AppData/Local/nvim/lua/config/options.lua` (options).
- **Zed**: `~/AppData/Roaming/Zed/keymap.json`, `~/AppData/Roaming/Zed/settings.json`.

Reload Neovim with `:source $MYVIMRC` after editing (or restart). Zed
hot-reloads the keymap on save.

## The tweaks

### Movement / navigation


| Key | What it does | Vim default | Why |
|---|---|---|---|
| `j` / `k` | Move by **visual** line | Move by logical line | Wrapped lines aren't skipped. With `5j` (count given) it still moves logical lines in nvim. |
| `H` / `L` | Start / end of line | Top / bottom of screen | `^` and `$` are awkward; screen-top/bottom is rarely useful. **Note**: LazyVim's default uses `H`/`L` for buffer cycling — that moves to `Ctrl-PageUp`/`Ctrl-PageDown` (see below). |
| `Ctrl-PageUp` / `Ctrl-PageDown` | Previous / next tab (Zed) or buffer (nvim) | Browser-style tab cycling | Reclaims tab navigation since `H`/`L` now mean start/end of line. |
| `n` / `N` / `*` / `#` | Recenter cursor (`zz`) after each | Just move | Search results stay in the middle of the screen, no scroll-hunting. |
| `<C-d>` / `<C-u>` | Recenter cursor after half-page scroll | Just scroll | Same reason. |

### Selection / clipboard

| Key | What it does | Vim default | Why |
|---|---|---|---|
| `Y` | Yank to end of line | Yank entire line (= `yy`) | Matches `C` (change to end) and `D` (delete to end). Vim's default is inconsistent. |
| OS clipboard | Yank/paste go through the system clipboard automatically | Separate vim registers | One brain for clipboard; copy in vim, paste in browser. |
| `p` in visual mode | Paste without clobbering the register | Replaces selection AND copies it to default register | You can paste the same text repeatedly without re-yanking. |

In Neovim this is `set clipboard=unnamedplus`. In Zed it's
`"vim": { "use_system_clipboard": "always" }` in settings.json.

### Edits

| Key | What it does | Vim default | Why |
|---|---|---|---|
| `J` | Join lines, **cursor stays put** | Joins, cursor moves to join point | Less jarring. |
| `x` | Delete char **without** copying it to the default register | Delete and yank to default | Stops single-char deletes from overwriting your last yank. |
| `<` / `>` in visual mode | Indent, **reselect** so you can chain `>>>>` | Indent, drops out of visual | Adjust indent without re-selecting. |
| `f` / `t` repeat | Use `;` (vim default) or grab a jump plugin (flash.nvim / leap.nvim) | `;` repeats forward, `,` repeats back | Vim default is fine; jump plugins replace this with `s<char><char>` for any visible target. flash.nvim ships in LazyVim by default. |

### Insert mode

| Key | What it does | Why |
|---|---|---|
| `Shift-Space` | Insert `_` (underscore) | snake_case is everywhere in Odin; Shift-Space has no sensible default in any GUI editor. **Caveat**: only works in GUI nvim (Neovide); terminal nvim collapses Shift-Space to Space before nvim sees it. Works in Zed unconditionally. |

## What's deliberately NOT mirrored

- **Plugins**: nvim has flash.nvim, mini.surround, etc. via LazyVim;
  Zed has no plugin equivalent. The keymaps above are the
  configuration-only subset that works in both.
- **Snippet system**: nvim uses blink.cmp + LazyVim snippets; Zed uses its
  own. No attempt to make snippet bindings match.
- **LSP keymaps**: LazyVim provides `gd` / `gr` / `K` etc. as defaults.
  Zed binds the same defaults under vim mode. Already aligned, no override needed.

## Cross-editor parity notes

- Zed's `workspace::SendKeystrokes` is used to compose keystroke sequences
  for things like `n` → `n` then `zz`. It feeds keys back through the
  binding pipeline.
- nvim uses `vim.keymap.set` with the equivalent right-hand side keystrokes.
- The `j`/`k` "respect count" trick (`v:count == 0 ? 'gj' : 'j'`) only
  exists in the nvim config. In Zed, `j` always sends `g j`, which means
  `5j` moves 5 visual lines (close enough; doesn't matter day-to-day).

## Hard rules (kept in mind when adding more)

- **Escape is the only way out of insert mode.** No `jj`, no `jk`,
  no `Ctrl-[`. `Ctrl-C` is rebound to copy. Reason: ambiguous escape
  shortcuts cause more bugs than they save keystrokes.
- **`Ctrl-C` always copies. `Ctrl-V` always pastes.** Regardless of vim
  mode. Reason: muscle memory from every other application.
- **Don't add a tweak without a reason.** Vim defaults are weird but they
  are at least *consistent across machines*. Every custom binding is one
  more thing to retrain when sitting at someone else's setup.
