return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 14,
            open_mapping = [[C-j]],
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            persist_size = true,
            direction = 'float'
        })
        local opts = { noremap = true }
        --       vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        --       vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        --       vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        --       vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        --       vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        --
        vim.keymap.set({ 'n' }, '<C-j>', ':ToggleTerm<CR>', opts)
        --       vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end
}
