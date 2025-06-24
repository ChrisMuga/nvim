print("Christ is King")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require('lazy-setup')
require('settings')
-- require('edenfox-feline')
require('icons')
require('gitsigns').setup()
require('nightfox')
require('mappings')
require('nvim-treesitter-config')
require ('nvim-treesitter.install').compilers = { 'zig' }

-- Enable gopls - go language server
-- TODO: Harmonize with other lsps
vim.lsp.enable('gopls')
