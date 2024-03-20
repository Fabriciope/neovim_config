-- color theme
return {
    --    {
    --        "catppuccin/nvim",
    --        name = "catppuccin",
    --        priority = 500,
    --        config = function()
    --            vim.cmd.colorscheme "catppuccin"
    --        end
    --    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("kanagawa")
        end
    },
    --    {
    --        "folke/tokyonight.nvim",
    --        name = 'tokyonight',
    --        lazy = false,
    --        priority = 500,
    --        opts = {},
    --        config = function()
    --            vim.cmd.colorscheme("tokyonight")
    --        end
    --    },
--    {
--        "luisiacc/gruvbox-baby",
--        priority = 500,
--        name = "gruvbox",
--        opts = {},
--        config = function()
--            vim.cmd.colorscheme("gruvbox")
--        end
--    },
}
