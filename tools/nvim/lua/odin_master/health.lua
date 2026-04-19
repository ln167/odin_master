-- Hooked by :checkhealth odin_master. Mirrors `odin-master doctor` output.
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
    for _, t in ipairs({ "odin", "ols", "odinfmt", "git", "odin-search", "odin-master" }) do
        tool(t)
    end
    if vim.fn.executable("odin-master") == 1 then
        local out = vim.fn.systemlist({ "odin-master", "doctor" })
        for _, line in ipairs(out) do vim.health.info(line) end
    end
end

return M
