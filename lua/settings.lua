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
vim.cmd [[colorscheme nightfox]]


-- Alpha, Greeter
-- vim.cmd [[Alpha]]

-- Attach file explorer
vim.cmd [[Neotree show]]


vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

-- Keymaps
vim.keymap.set("n", "nf", '<cmd>Neoformat<cr>')

require('lsp')
