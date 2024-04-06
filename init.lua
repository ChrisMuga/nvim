print("Christ is King")
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"
-- Require Lua Modules
require('lazy-setup')
require('settings')
require('plugins')
require('edenfox-feline')
require('icons')
require('gitsigns').setup()
require('nightfox')
require('mappings')
require('nvim-treesitter-config')

require("toggleterm").setup{
	direction='float'
}
