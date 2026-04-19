-- Format-on-save: pipes the buffer through `odinfmt -stdin` and replaces it.
local M = {}

function M.format_buffer(bufnr)
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    if vim.fn.executable("odinfmt") == 0 then return end
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    local out = vim.fn.systemlist("odinfmt -stdin", lines)
    if vim.v.shell_error ~= 0 then return end
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, out)
end

function M.setup(_opts)
    local g = vim.api.nvim_create_augroup("OdinMasterFormat", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = g,
        pattern = "*.odin",
        callback = function(ev) M.format_buffer(ev.buf) end,
    })
end

return M
