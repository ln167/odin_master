-- Optional DAP wiring. Requires nvim-dap and codelldb on PATH.
local M = {}

function M.setup(_opts)
    local ok, dap = pcall(require, "dap")
    if not ok then return end
    if vim.fn.executable("codelldb") == 0 then return end
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
        },
    }
end

return M
