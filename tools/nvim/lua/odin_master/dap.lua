-- Optional DAP wiring. Requires nvim-dap (+ nvim-dap-ui for the GUI panels)
-- and codelldb on PATH. Enable with `require("odin_master").setup({ dap = true })`.
--
-- `<leader>oD` builds the current .odin file and launches a codelldb session.
-- `<leader>db` toggles a breakpoint at the cursor (works in any buffer once
-- nvim-dap is installed).
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

	-- Convenience keymaps for the DAP stepping workflow. These exist whether
	-- or not the odin_master prefix-keymaps are enabled, because debugging is
	-- non-Odin-specific.
	local map = function(lhs, fn, desc)
		vim.keymap.set("n", lhs, fn, { desc = desc, silent = true })
	end
	map("<leader>db", function() require("dap").toggle_breakpoint() end,         "DAP: toggle breakpoint")
	map("<leader>dc", function() require("dap").continue() end,                  "DAP: continue / start")
	map("<leader>di", function() require("dap").step_into() end,                 "DAP: step into")
	map("<leader>do", function() require("dap").step_over() end,                 "DAP: step over")
	map("<leader>dO", function() require("dap").step_out() end,                  "DAP: step out")
	map("<leader>dr", function() require("dap").repl.toggle() end,               "DAP: toggle REPL")
	map("<leader>dq", function() require("dap").terminate() end,                 "DAP: terminate session")
	map("<F9>",  function() require("dap").toggle_breakpoint() end,              "DAP: toggle breakpoint")
	map("<F5>",  function() require("dap").continue() end,                       "DAP: continue / start")
	map("<F10>", function() require("dap").step_over() end,                      "DAP: step over")
	map("<F11>", function() require("dap").step_into() end,                      "DAP: step into")
	map("<F12>", function() require("dap").step_out() end,                       "DAP: step out")

	-- Auto-open nvim-dap-ui on session start / close on exit. No-op if dap-ui
	-- isn't installed; user just gets the bare dap experience.
	local ui_ok, dapui = pcall(require, "dapui")
	if ui_ok then
		dap.listeners.after.event_initialized["odin_master_dapui"] = function() dapui.open() end
		dap.listeners.before.event_terminated["odin_master_dapui"] = function() dapui.close() end
		dap.listeners.before.event_exited["odin_master_dapui"]     = function() dapui.close() end
	end
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
	if not ok then
		vim.notify(
			"nvim-dap not installed. Install via your plugin manager:\n" ..
			"  lazy.nvim:  { 'mfussenegger/nvim-dap' }\n" ..
			"  packer:     use 'mfussenegger/nvim-dap'\n" ..
			"Or use <leader>oR for the RAD Debugger (no nvim-dap dependency).",
			vim.log.levels.WARN
		); return
	end
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
