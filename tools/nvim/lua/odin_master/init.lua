-- odin_master.nvim entry point. `require("odin_master").setup({...})` wires
-- LSP (OLS), format-on-save (odinfmt), the search picker (odin-search), DAP
-- (codelldb + odin-dap), and the :OdinDoctor health command.
local M = {}

M.defaults = {
    lsp = true,            -- enable OLS via vim.lsp.config (or lspconfig fallback)
    format_on_save = true, -- BufWritePre -> odinfmt -stdin
    picker = "auto",       -- "telescope" | "snacks" | "fzf" | "auto" | false
    dap = false,           -- enable nvim-dap-odin (requires codelldb)
    keymap_prefix = "<leader>o",
}

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
end

return M
