-- odin_master.nvim entry point. `require("odin_master").setup({...})` wires
-- LSP (OLS), format-on-save (odinfmt), the search picker (odin-search), DAP
-- (codelldb + odin-dap), the lessons runner, and `:OdinDoctor`.
local M = {}

M.defaults = {
    lsp = true,            -- enable OLS via vim.lsp.config (or lspconfig fallback)
    format_on_save = true, -- BufWritePre -> odinfmt -stdin
    picker = "auto",       -- "telescope" | "snacks" | "fzf" | "auto" | false
    dap = false,           -- enable nvim-dap-odin (requires codelldb)
    keymaps = true,        -- register <leader>o* keymaps
    keymap_prefix = "<leader>o",
}

local function register_keymaps(prefix)
    local function map(suffix, fn, desc)
        vim.keymap.set("n", prefix .. suffix, fn, { desc = desc, silent = true })
    end
    map("l", function() require("odin_master.lsp").toggle() end,        "Odin: toggle LSP (ols)")
    map("s", function() require("odin_master.pickers").search() end,    "Odin: search corpus")
    map("r", function() require("odin_master.lessons").run_current() end, "Odin: run current file")
    map("h", function() require("odin_master.lessons").pick() end,      "Odin: pick lesson")
    map("H", function() require("odin_master.lessons").next() end,      "Odin: next lesson")
    map("p", function() require("odin_master.lessons").playground() end, "Odin: open playground")
    map("d", function() vim.cmd("OdinDoctor") end,                       "Odin: doctor")
end

function M.setup(opts)
    opts = vim.tbl_deep_extend("force", M.defaults, opts or {})
    M.opts = opts
    if opts.lsp then require("odin_master.lsp").setup(opts) end
    if opts.format_on_save then require("odin_master.format").setup(opts) end
    if opts.picker then require("odin_master.pickers").setup(opts) end
    if opts.dap then require("odin_master.dap").setup(opts) end
    require("odin_master.health")  -- registers :checkhealth provider
    vim.api.nvim_create_user_command("OdinDoctor", function()
        vim.cmd("checkhealth odin_master")
    end, {})
    if opts.keymaps then register_keymaps(opts.keymap_prefix or "<leader>o") end
end

return M
