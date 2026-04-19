-- Drop-in lazy.nvim plugin spec. Add this file to your lazy plugin list:
--
--   require("lazy").setup({ require("path.to.tools.nvim.lazy") })
--
-- Or copy the contents into your own plugin spec table.
return {
    name = "odin_master.nvim",
    dir = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h"),
    ft = { "odin" },
    dependencies = {
        "neovim/nvim-lspconfig",
        { "mfussenegger/nvim-dap", optional = true },
    },
    config = function()
        require("odin_master").setup({
            lsp = true,
            format_on_save = true,
            picker = "auto",
            dap = vim.fn.executable("codelldb") == 1,
        })
    end,
}
