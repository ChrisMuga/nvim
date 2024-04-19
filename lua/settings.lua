-- Settings

-- Autochange the directory
vim.opt.autochdir = true
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

-- Startup Colorscheme
-- vim.cmd [[colorscheme nightfox]]
-- vim.cmd [[colorscheme material-oceanic]]
vim.cmd [[colorscheme material-deep-ocean]]

-- Attach file explorer
-- vim.cmd [[Neotree show]]

vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

-- Keymaps
vim.keymap.set("n", "nf", '<cmd>Neoformat<cr>')

require('telescope').load_extension('media_files')

require('lsp')
