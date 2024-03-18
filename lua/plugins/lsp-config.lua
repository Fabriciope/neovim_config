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
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "dockerls", "docker_compose_language_service", "gopls", "html", "jsonls", "quick_lint_js", "intelephense", "sqlls", "yamlls" },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.gopls.setup({})
      -- html
      lspconfig.jsonls.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.yamlls.setup({})

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}
