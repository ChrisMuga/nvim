-- Settings

-- Autochange the directory
-- vim.opt.autochdir = true
vim.opt.encoding = "UTF-8"
vim.opt.guifont = "Lekton Nerd Font Mono"
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.wo.number = true

-- Tab width options
vim.opt.shiftwidth=4
vim.opt.tabstop = 4

require('set-theme')

-- Attach file explorer
require("oil").setup()

-- Leader mappings
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

-- Keymaps
vim.keymap.set("n", "nf", '<cmd>Neoformat<cr>')

require('telescope').load_extension('media_files')

require('lsp')
