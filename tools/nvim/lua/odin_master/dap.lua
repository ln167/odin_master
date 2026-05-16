-- Optional DAP wiring. Requires nvim-dap + codelldb on PATH. Enable with
-- `require("odin_master").setup({ dap = true })`. After that, `<leader>oD`
-- builds the current file in debug mode and launches a session.
local M = {}

function M.setup(_opts)
	local ok, dap = pcall(require, "dap")
	if not ok then return end
	if vim.fn.executable("codelldb") == 0 then return end

	-- Locate the LLDB pretty-printers for Odin runtime types.
	local printer
	local marker = vim.fn.findfile("content/manifest.yaml", ".;")
	if marker ~= "" then
		printer = vim.fn.fnamemodify(marker, ":h:h") .. "/tools/debug/odin_lldb.py"
	end

	dap.adapters.codelldb = {
		type = "server",
		port = "${port}",
		executable = { command = "codelldb", args = { "--port", "${port}" } },
	}
	dap.configurations.odin = {
		{
			name = "Launch",
			type = "codelldb",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
			initCommands = printer and { "command script import " .. printer } or {},
		},
	}
end

-- `<leader>oD` — build the current .odin buffer in debug mode (`-file`),
-- then start a codelldb session against the built binary.
function M.launch_current()
	local file = vim.fn.expand("%:p")
	if file == "" or not file:match("%.odin$") then
		vim.notify("not an .odin buffer", vim.log.levels.WARN); return
	end
	if vim.fn.executable("odin") == 0 then
		vim.notify("odin not on PATH", vim.log.levels.WARN); return
	end
	local out = vim.fn.fnamemodify(file, ":r") .. ".dbg.exe"
	vim.cmd("write")
	local rc = vim.fn.system({ "odin", "build", file, "-file", "-debug", "-out:" .. out })
	if vim.v.shell_error ~= 0 then
		vim.notify("odin build failed:\n" .. rc, vim.log.levels.ERROR); return
	end
	local ok, dap = pcall(require, "dap")
	if not ok then vim.notify("nvim-dap not installed", vim.log.levels.WARN); return end
	dap.run({
		name = "Launch (current)",
		type = "codelldb",
		request = "launch",
		program = out,
		cwd = vim.fn.fnamemodify(file, ":h"),
		stopOnEntry = false,
	})
end

return M
