-- lsp server ?
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        --    config = function()
        --      require("mason-lspconfig").setup({
        --        ensure_installed = { "lua_ls", "dockerls", "docker_compose_language_service", "gopls", "html", "jsonls", "quick_lint_js", "intelephense", "sqlls", "yamlls" },
        --      })
        --    end
        lazy = false,
        opts = {
            auto_install = true
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.dockerls.setup({
                capabilities = capabilities
            })
            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities
            })

            -- html
            lspconfig.jsonls.setup({
                capabilities = capabilities
            })

            lspconfig.quick_lint_js.setup({
                capabilities = capabilities
            })

            lspconfig.intelephense.setup({
                capabilities = capabilities
            })

            lspconfig.sqlls.setup({
                capabilities = capabilities
            })

            lspconfig.yamlls.setup({
                capabilities = capabilities
            })


            vim.keymap.set('n', '<leader>dg', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
        end
    }
}
