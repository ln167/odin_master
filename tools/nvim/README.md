# Neovim integration

Lua plugin spec for the odin_master template. Wires OLS, formatting (via
odinfmt), DAP (codelldb), tree-sitter (built-in 0.12+), an `odin-search`
picker, the lessons runner, and a playground sandbox.

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
        picker = "auto",
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
| `<leader>os`   | Search the local Odin corpus (`odin-search`)      |
| `<leader>or`   | Run the current `.odin` file (`odin run % -file`) |
| `<leader>oh`   | Pick a lesson from `lessons/`                     |
| `<leader>oH`   | Open the next lesson after the last one I touched |
| `<leader>op`   | Open `playground/scratch.odin`                    |
| `<leader>od`   | `:OdinDoctor` (checkhealth odin_master)           |

Pass `keymaps = false` or `keymap_prefix = "<leader>O"` to opts if you need
to remap.

## Commands

- `:OdinLspToggle` — same as `<leader>ol`
- `:OdinSearch <query>` — same as `<leader>os` but takes the query inline
- `:OdinDoctor` — runs `:checkhealth odin_master`
