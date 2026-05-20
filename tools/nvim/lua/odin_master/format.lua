-- Format-on-save: pipes the buffer through `odinfmt -stdin` and replaces it.
-- Preserves nvim-dap breakpoints across the replace (otherwise the signs get
-- wiped because we replace every line in the buffer).
local M = {}

local function capture_breakpoints(bufnr)
	local ok, bps_mod = pcall(require, "dap.breakpoints")
	if not ok then return nil end
	local all = bps_mod.get()
	return all and all[bufnr] or nil
end

local function restore_breakpoints(bufnr, bps)
	if not bps then return end
	local ok, bps_mod = pcall(require, "dap.breakpoints")
	if not ok then return end
	for _, bp in ipairs(bps) do
		bps_mod.set({
			condition  = bp.condition,
			hitCondition = bp.hitCondition,
			logMessage = bp.logMessage,
		}, bufnr, bp.line)
	end
end

function M.format_buffer(bufnr)
	bufnr = bufnr or vim.api.nvim_get_current_buf()
	if vim.fn.executable("odinfmt") == 0 then return end
	local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
	local out = vim.fn.systemlist("odinfmt -stdin", lines)
	if vim.v.shell_error ~= 0 then return end
	for i, line in ipairs(out) do
		out[i] = line:gsub("\r$", "")
	end
	local saved_bps = capture_breakpoints(bufnr)
	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, out)
	restore_breakpoints(bufnr, saved_bps)
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
