-- Require Lua Modules
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
