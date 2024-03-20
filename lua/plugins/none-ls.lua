return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            source = {
                -- formatting = formater | diagnostics = linter
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.phpcsfixer,
                null_ls.builtins.diagnostics.golangci_lint,
--                null_ls.builtins.diagnostics.eslint_d, -- gave a error
            }
        })

        vim.keymap.set('n', '<tab>f', vim.lsp.buf.format, {})
    end
}
