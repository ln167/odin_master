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

local function ols_clients_for_buf(bufnr)
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    local out = {}
    local clients = vim.lsp.get_clients and vim.lsp.get_clients({ bufnr = bufnr })
        or vim.lsp.buf_get_clients(bufnr)
    for _, c in pairs(clients) do
        if c.name == "ols" then table.insert(out, c) end
    end
    return out
end

-- Toggle OLS for the current buffer. If any ols client is attached, stop
-- them all; otherwise re-attach by re-running the configured starter.
function M.toggle()
    local bufnr = vim.api.nvim_get_current_buf()
    local active = ols_clients_for_buf(bufnr)
    if #active > 0 then
        for _, c in ipairs(active) do
            vim.lsp.stop_client(c.id, true)
        end
        vim.notify("ols: off", vim.log.levels.INFO)
        return
    end
    if vim.lsp and vim.lsp.enable then
        pcall(vim.lsp.enable, "ols")
        vim.cmd("LspStart ols")
    else
        local ok = start_with_lspconfig(M.opts or {})
        if ok then vim.cmd("LspStart ols") end
    end
    vim.notify("ols: on", vim.log.levels.INFO)
end

function M.setup(opts)
    M.opts = opts
    if vim.lsp and vim.lsp.config then
        start_with_native(opts)
    else
        start_with_lspconfig(opts)
    end
    vim.api.nvim_create_user_command("OdinLspToggle", function() M.toggle() end, {})
end

return M
