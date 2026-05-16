-- `<leader>oV` — scaffold a verification test for the procedure under cursor.
-- Walks up from the current line to find the nearest `<ident> :: proc(...)`
-- declaration, then creates `tests/<slug>/{main.odin,expected.txt}` and opens
-- the stub. The user fills in the fingerprint and runs `just verify <slug>`.
local M = {}

local function repo_root()
	local marker = vim.fn.findfile("content/manifest.yaml", ".;")
	if marker == "" then return nil end
	return vim.fn.fnamemodify(marker, ":h:h")
end

local function find_proc_name()
	local line_nr = vim.fn.line(".")
	for lnum = line_nr, math.max(1, line_nr - 200), -1 do
		local line = vim.fn.getline(lnum)
		local name = line:match("^([%w_]+)%s*::%s*proc")
		if name then return name end
	end
	return nil
end

local function slugify(name)
	return name:lower():gsub("[^%w]+", "-"):gsub("^%-", ""):gsub("%-$", "")
end

function M.scaffold()
	local root = repo_root()
	if not root then vim.notify("repo root not found", vim.log.levels.WARN); return end

	local proc = find_proc_name()
	if not proc then
		vim.notify("no `<ident> :: proc` declaration found near cursor", vim.log.levels.WARN)
		return
	end

	local source = vim.fn.expand("%:p")
	local src_rel = source ~= "" and vim.fn.fnamemodify(source, ":.") or "(unsaved)"
	local default_slug = slugify(proc)

	vim.ui.input({ prompt = "Verification slug: ", default = default_slug }, function(slug)
		if not slug or slug == "" then return end
		local dir = root .. "/tests/" .. slug
		if vim.fn.isdirectory(dir) == 1 then
			vim.notify("tests/" .. slug .. " already exists", vim.log.levels.WARN)
			return
		end
		vim.fn.mkdir(dir, "p")

		local main = dir .. "/main.odin"
		local expected = dir .. "/expected.txt"

		local stub = string.format([[package main

import "core:fmt"

// Verification for `%s` in %s.
// Fill in: call the proc with deterministic inputs, print a small fingerprint
// (a hash, a few sample values, a count) to stdout. Update expected.txt to
// match. `just verify %s` will diff stdout against expected.txt.
main :: proc() {
	fmt.println("TODO")
}
]], proc, src_rel, slug)

		local fd = io.open(main, "w"); fd:write(stub); fd:close()
		fd = io.open(expected, "w"); fd:write("TODO\n"); fd:close()

		vim.cmd("edit " .. vim.fn.fnameescape(main))
		vim.notify("scaffolded tests/" .. slug, vim.log.levels.INFO)
	end)
end

return M
