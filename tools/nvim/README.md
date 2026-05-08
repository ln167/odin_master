# Neovim integration

Lua plugin spec for the odin_master template. Wires OLS, formatting (via
odinfmt), DAP (codelldb), tree-sitter (built-in 0.12+), a qmd-backed
search prompt, the lessons runner, and a scratch buffer.

## LazyVim install

Drop a single file into `~/.config/nvim/lua/plugins/odin.lua`:

```lua
return {
  {
    name = "odin_master.nvim",
    dir = vim.fn.expand("~/dev/odin_master/tools/nvim"),
    ft = { "odin" },
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("odin_master").setup({
        lsp = true,
        format_on_save = true,
        dap = vim.fn.executable("codelldb") == 1,
      })
    end,
  },
}
```

## Hotkeys (default prefix `<leader>o`)

| Key            | Action                                            |
|----------------|---------------------------------------------------|
| `<leader>ol`   | Toggle OLS (Odin LSP) on/off for current buffer   |
| `<leader>oq`   | qmd search the local Odin corpus (replaces former `<leader>os`) |
| `<leader>or`   | Run the current `.odin` file (`odin run % -file`) |
| `<leader>oh`   | Pick a lesson from `content/domains/odin/vault/lessons/` |
| `<leader>oH`   | Open the next lesson after the last one I touched |
| `<leader>op`   | Open `scratch/scratch.odin`                       |
| `<leader>od`   | `:OdinDoctor` (checkhealth odin_master)           |

Pass `keymaps = false` or `keymap_prefix = "<leader>O"` to opts if you need
to remap.

## Commands

- `:OdinLspToggle` — same as `<leader>ol`
- `:OdinSearch <query>` — same as `<leader>oq` but takes the query inline
- `:OdinDoctor` — runs `:checkhealth odin_master`

## Requirements

- `qmd` on PATH (`npm install -g @tobilu/qmd`) for `<leader>oq` to work.
- A qmd collection indexed for the substrate (e.g., `qmd collection add content/domains/odin/source/raw --name odin-source`).
- The `<leader>oq` keymap shells out to `python tools/substrate/search.py`, which dispatches to qmd cross-platform.
