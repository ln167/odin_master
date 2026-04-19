-- OLS configuration. Prefers nvim 0.11+ vim.lsp.config; falls back to
-- nvim-lspconfig if present. Silent no-op if neither is available.
local M = {}

local function start_with_native(opts)
    vim.lsp.config("ols", {
        cmd = { "ols" },
        filetypes = { "odin" },
        root_markers = { "ols.json", "odinfmt.json", ".git" },
        settings = opts.ols_settings or {},
    })
    vim.lsp.enable("ols")
end

local function start_with_lspconfig(opts)
    local ok, lspconfig = pcall(require, "lspconfig")
    if not ok then return false end
    lspconfig.ols.setup({
        cmd = { "ols" },
        settings = opts.ols_settings or {},
    })
    return true
end

function M.setup(opts)
    if vim.lsp and vim.lsp.config then
        start_with_native(opts)
    else
        start_with_lspconfig(opts)
    end
end

return M
