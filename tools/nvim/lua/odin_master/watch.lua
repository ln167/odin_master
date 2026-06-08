-- `<leader>ow` — toggle run-on-save for the current .odin buffer. While on, a
-- BufWritePost reruns `odin run % -file` into one reused output split. No
-- external watcher: nvim already knows you saved.
local M = {}

local group = vim.api.nvim_create_augroup("OdinMasterWatch", { clear = true })
local watched = {} -- bufnr -> true
local out_buf, out_win

local function ensure_out()
	if not (out_buf and vim.api.nvim_buf_is_valid(out_buf)) then
		out_buf = vim.api.nvim_create_buf(false, true)
	end
	if not (out_win and vim.api.nvim_win_is_valid(out_win)) then
		local cur = vim.api.nvim_get_current_win()
		vim.cmd("botright 12split")
		out_win = vim.api.nvim_get_current_win()
		vim.api.nvim_win_set_buf(out_win, out_buf)
		vim.api.nvim_set_current_win(cur)
	end
end

local function run(file)
	ensure_out()
	vim.api.nvim_buf_set_lines(out_buf, 0, -1, false, { "[watch] odin run " .. file .. " -file" })
	local function append(_, data)
		if not data then return end
		local lines = vim.tbl_filter(function(l) return l ~= "" end, data)
		if #lines > 0 and vim.api.nvim_buf_is_valid(out_buf) then
			vim.api.nvim_buf_set_lines(out_buf, -1, -1, false, lines)
		end
	end
	vim.fn.jobstart({ "odin", "run", file, "-file" },
		{ cwd = vim.fn.fnamemodify(file, ":h"), on_stdout = append, on_stderr = append })
end

function M.toggle()
	local buf = vim.api.nvim_get_current_buf()
	local file = vim.api.nvim_buf_get_name(buf)
	if file == "" or not file:match("%.odin$") then
		vim.notify("not an .odin buffer", vim.log.levels.WARN); return
	end
	if vim.fn.executable("odin") == 0 then
		vim.notify("odin not on PATH", vim.log.levels.WARN); return
	end
	if watched[buf] then
		watched[buf] = nil
		vim.api.nvim_clear_autocmds({ group = group, buffer = buf })
		vim.notify("odin watch: off", vim.log.levels.INFO)
	else
		watched[buf] = true
		vim.api.nvim_create_autocmd("BufWritePost", {
			group = group, buffer = buf,
			callback = function() run(vim.api.nvim_buf_get_name(buf)) end,
		})
		vim.notify("odin watch: on (save to rerun)", vim.log.levels.INFO)
		run(file)
	end
end

return M
