-- color theme
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 500,
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    --    {
    --        'AlexvZyl/nordic.nvim',
    --        lazy = false,
    --        priority = 1000,
    --        config = function()
    --            require 'nordic'.load()
    --        end
    --    },
    --    {
    --        "folke/tokyonight.nvim",
    --        name = 'tokyonight',
    --        lazy = false,
    --        priority = 1000,
    --        opts = {},
    --        config = function()
    --            vim.cmd.colorscheme("tokyonight")
    --        end
    --
    --    }
    --    {
    --        "ellisonleao/gruvbox.nvim",
    --        priority = 1000,
    --        name = "gruvbox",
    --        opts = {},
    --        config = function()
    --            vim.cmd.colorscheme("gruvbox")
    --        end
    --    }
    --    {
    --        "christianchiarulli/nvcode-color-schemes.vim",
    --        name = "vscode",
    --        config = function()
    --            vim.cmd.colorscheme("vscode")
    --        end
    --    }
}
