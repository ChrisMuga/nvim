-- Settings

-- Autochange the directory
-- vim.opt.autochdir
vim.opt.encoding = "UTF-8"
vim.opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.wo.number = true

-- Tab width options
vim.opt.shiftwidth=4
vim.opt.tabstop = 4

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Colorscheme
vim.cmd [[colorscheme everforest]]

vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

require('lsp')
