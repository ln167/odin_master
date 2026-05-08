-- qmd-backed search picker. Prompts for a query and opens the result list in a
-- terminal split. Replaces the deleted odin-search-based picker.
--
-- Requires: `npm install -g @tobilu/qmd` plus `qmd collection add` for at least
-- one corpus. `python tools/substrate/search.py` does the cross-platform dispatch.
local M = {}

local function repo_root()
    local marker = vim.fn.findfile("content/manifest.yaml", ".;")
    if marker == "" then return nil end
    return vim.fn.fnamemodify(marker, ":h:h")
end

local function run_search_split(root, query)
    local cmd = string.format(
        "cd %s && python tools/substrate/search.py --bm25 %s --limit 10",
        vim.fn.shellescape(root),
        vim.fn.shellescape(query)
    )
    vim.cmd("split | terminal " .. cmd)
end

function M.query()
    local root = repo_root()
    if not root then
        vim.notify("repo root not found (no content/manifest.yaml ancestor)", vim.log.levels.WARN)
        return
    end
    local q = vim.fn.input("qmd: ")
    if q == "" then return end
    run_search_split(root, q)
end

function M.setup(_opts)
    vim.api.nvim_create_user_command("OdinSearch",
        function(c)
            local root = repo_root() or vim.fn.getcwd()
            if c.args ~= "" then
                run_search_split(root, c.args)
            else
                M.query()
            end
        end,
        { nargs = "*" })
end

return M
