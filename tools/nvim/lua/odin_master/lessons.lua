-- Lessons runner: picks a lesson from `lessons/*/README.md` (or jumps to the
-- one after the most recently opened, tracked at ~/.cache/odin_master/lesson-cursor.txt).
local M = {}

local function repo_root()
    local marker = vim.fn.findfile("content/manifest.yaml", ".;")
    if marker == "" then return nil end
    return vim.fn.fnamemodify(marker, ":h:h")
end

local function cursor_path()
    local cache = vim.fn.stdpath("cache") .. "/odin_master"
    vim.fn.mkdir(cache, "p")
    return cache .. "/lesson-cursor.txt"
end

local function read_cursor()
    local fd = io.open(cursor_path(), "r"); if not fd then return nil end
    local s = fd:read("*l"); fd:close()
    return s and s:gsub("%s+$", "") or nil
end

local function write_cursor(slug)
    local fd = io.open(cursor_path(), "w"); if not fd then return end
    fd:write(slug or ""); fd:close()
end

local function list_lessons(root)
    local out = {}
    local lessons_dir = root .. "/lessons"
    local entries = vim.fn.readdir(lessons_dir, function(name)
        return name:match("^%d%d%-") and 1 or 0
    end)
    table.sort(entries)
    for _, name in ipairs(entries) do
        local readme = lessons_dir .. "/" .. name .. "/README.md"
        if vim.fn.filereadable(readme) == 1 then
            table.insert(out, { slug = name, path = readme })
        end
    end
    return out, lessons_dir
end

local function open_lesson(lesson)
    write_cursor(lesson.slug)
    vim.cmd("edit " .. vim.fn.fnameescape(lesson.path))
end

-- `<leader>oh` — pick any lesson.
function M.pick()
    local root = repo_root()
    if not root then vim.notify("repo root not found", vim.log.levels.WARN); return end
    local lessons, dir = list_lessons(root)
    if #lessons == 0 then vim.notify("no lessons under " .. dir, vim.log.levels.INFO); return end
    local items = {}
    for _, l in ipairs(lessons) do table.insert(items, l.slug) end
    vim.ui.select(items, { prompt = "Lesson" }, function(_, idx)
        if idx then open_lesson(lessons[idx]) end
    end)
end

-- `<leader>oH` — open the lesson that comes after the last one I touched.
-- Wraps to lesson 00 if there's no cursor or the cursor is at the end.
function M.next()
    local root = repo_root()
    if not root then vim.notify("repo root not found", vim.log.levels.WARN); return end
    local lessons = list_lessons(root)
    if #lessons == 0 then return end
    local last = read_cursor()
    local target = lessons[1]
    if last then
        for i, l in ipairs(lessons) do
            if l.slug == last and lessons[i + 1] then
                target = lessons[i + 1]; break
            end
        end
    end
    open_lesson(target)
end

-- `<leader>op` — open playground/scratch.odin (creating it if needed).
function M.playground()
    local root = repo_root()
    if not root then vim.notify("repo root not found", vim.log.levels.WARN); return end
    local pg = root .. "/playground"
    local scratch = pg .. "/scratch.odin"
    if vim.fn.isdirectory(pg) == 0 then vim.fn.mkdir(pg, "p") end
    if vim.fn.filereadable(scratch) == 0 then
        local fd = io.open(scratch, "w")
        if fd then
            fd:write("package main\n\nimport \"core:fmt\"\n\nmain :: proc() {\n    fmt.println(\"hi\")\n}\n")
            fd:close()
        end
    end
    vim.cmd("edit " .. vim.fn.fnameescape(scratch))
end

-- `<leader>or` — run the current Odin buffer with `odin run % -file`.
function M.run_current()
    local file = vim.fn.expand("%:p")
    if file == "" or not file:match("%.odin$") then
        vim.notify("not an .odin buffer", vim.log.levels.WARN); return
    end
    if vim.fn.executable("odin") == 0 then
        vim.notify("odin not on PATH", vim.log.levels.WARN); return
    end
    vim.cmd("write")
    vim.cmd("split | terminal odin run " .. vim.fn.shellescape(file) .. " -file")
end

return M
