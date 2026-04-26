-- Search picker: shells out to `odin-search --json <query>` and shows results
-- in a vim.ui.select list (Telescope/Snacks/fzf get picked up automatically
-- if the user has wrapped vim.ui.select with one of them).
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

-- Resolve a hit's relative `path` to an absolute file we can `:edit`. We
-- mirror the Rust binary's logic: read content/manifest.yaml from the repo
-- root and look up the source's base directory. Falls back to the relative
-- path on failure (the picker still shows the result; it just won't open).
local function repo_root()
    local marker = vim.fn.findfile("content/manifest.yaml", ".;")
    if marker == "" then return nil end
    return vim.fn.fnamemodify(marker, ":h:h")
end

local function tier_dir(tier)
    if tier == 1 then return "authoritative"
    elseif tier == 2 then return "curated"
    elseif tier == 3 then return "community"
    else return "unknown" end
end

local function source_base_dir(root, source_id)
    -- Cheap parse: scan manifest.yaml for the matching `- id:` block.
    local manifest = root .. "/content/manifest.yaml"
    local fd = io.open(manifest, "r"); if not fd then return nil end
    local body = fd:read("*a"); fd:close()
    local id, tier, fetcher, dest, src_path
    for block in body:gmatch("(%- id:[^%-]+)") do
        id        = block:match("- id:%s*([%w%-_%.]+)")
        if id == source_id then
            tier      = tonumber(block:match("tier:%s*(%d+)"))
            fetcher   = block:match("fetcher:%s*([%w_]+)")
            dest      = block:match("destination:%s*([%w%-_%./]+)")
            src_path  = block:match("source_path:%s*([^\n]+)")
            break
        end
    end
    if not id or id ~= source_id then return nil end
    if fetcher == "local_dir" and src_path then
        src_path = src_path:gsub("^%s+", ""):gsub("%s+$", "")
        src_path = src_path:gsub("${(%w+)}", function(v) return os.getenv(v) or ("${" .. v .. "}") end)
        if src_path:match("^[A-Za-z]:") or src_path:sub(1, 1) == "/" then
            return src_path
        end
        return root .. "/" .. src_path
    end
    if not tier then return nil end
    dest = dest or source_id
    return string.format("%s/content/sources/tier%d-%s/%s", root, tier, tier_dir(tier), dest)
end

local function open_hit(hit)
    local target = hit.path
    local root = repo_root()
    if root and hit.source_id then
        local base = source_base_dir(root, hit.source_id)
        if base then target = base .. "/" .. hit.path end
    end
    if not target or target == "" then return end
    vim.cmd("edit " .. vim.fn.fnameescape(target))
    if hit.char_offset and hit.char_offset > 0 then
        local fd = io.open(target, "r")
        if fd then
            local body = fd:read("*a"); fd:close()
            local line = 1
            for i = 1, math.min(hit.char_offset, #body) do
                if body:sub(i, i) == "\n" then line = line + 1 end
            end
            pcall(vim.api.nvim_win_set_cursor, 0, { line, 0 })
            vim.cmd("normal! zz")
        end
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

function M.setup(_opts)
    -- Keymaps live in odin_master/init.lua now.
    vim.api.nvim_create_user_command("OdinSearch",
        function(c) M.search(c.args ~= "" and c.args or nil) end, { nargs = "*" })
end

return M
