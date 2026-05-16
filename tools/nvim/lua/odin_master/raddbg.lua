-- `<leader>oR` — build the current .odin buffer with -debug, then launch
-- RAD Debugger against the resulting binary. Install raddbg once with
-- `just raddbg-install`.
local M = {}

local function repo_root()
	local marker = vim.fn.findfile("content/manifest.yaml", ".;")
	if marker == "" then return nil end
	return vim.fn.fnamemodify(marker, ":h:h")
end

function M.launch_current()
	local file = vim.fn.expand("%:p")
	if file == "" or not file:match("%.odin$") then
		vim.notify("not an .odin buffer", vim.log.levels.WARN); return
	end
	if vim.fn.executable("odin") == 0 then
		vim.notify("odin not on PATH", vim.log.levels.WARN); return
	end
	local root = repo_root()
	if not root then vim.notify("repo root not found", vim.log.levels.WARN); return end
	local raddbg = root .. "/tools/debug/raddbg/raddbg.exe"
	if vim.fn.filereadable(raddbg) == 0 then
		vim.notify("raddbg.exe not installed. Run: just raddbg-install", vim.log.levels.WARN); return
	end
	local out = vim.fn.fnamemodify(file, ":r") .. ".dbg.exe"
	vim.cmd("write")
	local rc = vim.fn.system({ "odin", "build", file, "-file", "-debug", "-out:" .. out })
	if vim.v.shell_error ~= 0 then
		vim.notify("odin build failed:\n" .. rc, vim.log.levels.ERROR); return
	end
	vim.fn.jobstart({ raddbg, out }, { detach = true })
	vim.notify("raddbg launched against " .. vim.fn.fnamemodify(out, ":t"), vim.log.levels.INFO)
end

return M
