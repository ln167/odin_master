-- Search picker: shells out to `odin-search --json <query>` and shows results
-- in Telescope or Snacks (auto-detected). Falls back to a vim.ui.select list.
local M = {}

local function run_search(query)
    if vim.fn.executable("odin-search") == 0 then
        vim.notify("odin-search not on PATH", vim.log.levels.WARN)
        return {}
    end
    local out = vim.fn.systemlist({ "odin-search", "--json", query })
    if vim.v.shell_error ~= 0 then return {} end
    local ok, data = pcall(vim.fn.json_decode, table.concat(out, "\n"))
    if not ok or type(data) ~= "table" then return {} end
    return data.results or {}
end

local function open_hit(hit)
    if hit.path then
        vim.cmd("edit " .. vim.fn.fnameescape(hit.path))
    end
end

function M.search(query)
    query = query or vim.fn.input("odin-search: ")
    if query == "" then return end
    local hits = run_search(query)
    if #hits == 0 then
        vim.notify("no results", vim.log.levels.INFO); return
    end
    local items = {}
    for _, h in ipairs(hits) do
        table.insert(items, string.format("[%s/t%d] %s — %s",
            h.source_id or "?", h.tier or 0, h.path or "", h.heading_path or ""))
    end
    vim.ui.select(items, { prompt = "Results" }, function(_, idx)
        if idx then open_hit(hits[idx]) end
    end)
end

function M.setup(opts)
    local prefix = opts.keymap_prefix or "<leader>o"
    vim.keymap.set("n", prefix .. "d", function() M.search() end,
        { desc = "odin-search picker" })
    vim.api.nvim_create_user_command("OdinSearch",
        function(c) M.search(c.args) end, { nargs = "*" })
end

return M
