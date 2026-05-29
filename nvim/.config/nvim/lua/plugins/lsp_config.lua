return {
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "jdtls", "clangd" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("jdtls")
            vim.lsp.enable("clangd")
            -- vim.lsp.enable("java_language_server")

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) 
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) 
            vim.keymap.set('n', '<leader>cA', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Show diagnostic under cursor' })
        end,
    },
}
