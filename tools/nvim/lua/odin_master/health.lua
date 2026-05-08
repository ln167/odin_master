-- Hooked by :checkhealth odin_master. Reports on Odin compiler/LSP/formatter
-- and the substrate's `just doctor` health check.
local M = {}

local function tool(name)
    if vim.fn.executable(name) == 1 then
        vim.health.ok(name .. " on PATH")
    else
        vim.health.warn(name .. " missing")
    end
end

function M.check()
    vim.health.start("odin_master")
    -- Note: odin-search and odin-master CLIs were removed by the 2026-05-04
    -- substrate redesign. Substrate health checks now run via `just doctor`.
    for _, t in ipairs({ "odin", "ols", "odinfmt", "git", "python", "just" }) do
        tool(t)
    end
    if vim.fn.executable("just") == 1 then
        local out = vim.fn.systemlist({ "just", "doctor" })
        for _, line in ipairs(out) do vim.health.info(line) end
    end
end

return M
