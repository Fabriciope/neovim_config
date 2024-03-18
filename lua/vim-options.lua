local set = vim.opt

-- GLOBAL SETS -----------------------------------------------------------------

vim.cmd("syntax on") -- Enable syntax highlight
set.nu = true --  Enable line numbers
set.tabstop = 4 -- Show existing tab with 4 spaces width
set.shiftwidth = 4 -- When indenting with '>', use 4 spaces width
set.expandtab = true -- On pressing tab, insert 4 spaces
set.smarttab = true -- insert tabs on the start of a line according to shiftwidth
set.smartindent = true -- Automatically inserts one extra level of indentation in some cases
set.hidden = true -- Hides the current buffer when a new file is openned
set.incsearch = true -- Incremental search
set.ignorecase = true -- Ingore case in search
set.smartcase = true -- Consider case if there is a upper case character
set.scrolloff = 9 -- Minimum number of lines to keep above and below the cursor
--set.colorcolumn = 90 -- Draws a line at the given line to keep aware of the line size
set.signcolumn = 'yes' -- Add a column on the left. Useful for linting
set.cmdheight = 2 -- Give more space for displaying messages
set.updatetime = 100 -- Time in miliseconds to consider the changes
set.encoding = 'utf-8' -- The encoding should be utf-8 to activate the font icons
--set.nobackup = true -- No backup files
--set.nowritebackup = true -- No backup files
set.splitright = true -- Create the vertical splits to the right
set.splitbelow = true -- Create the horizontal splits below
set.autoread = true -- Update vim after file update from outside
set.mouse = 'a' -- enable mouse support
set.relativenumber = true -- relative numbers on line numbers

vim.cmd("filetype on") -- Detect and set the filetype option and trigger the FileType Event
vim.cmd("filetype plugin on") -- Load the plugin file for the file type, if any
vim.cmd("filetype indent on") -- Load the indent file for the file type, if any


vim.g.mapleader = " "
