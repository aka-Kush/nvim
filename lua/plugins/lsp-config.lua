return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup{
                cmd = { "lua-language-server" },
                capabilities = capabilities
            }
            lspconfig.nixd.setup{
                cmd = { "nixd" },
                capabilities = capabilities
            }
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, {desc = "Go to definition"})
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {desc = "List references"})
            vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {desc = "Code action"})
        end
    }
}
