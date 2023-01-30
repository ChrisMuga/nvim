-- Settings

-- Autochange the directory
-- vim.opt.autochdir
vim.opt.encoding = "UTF-8"
vim.opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.termguicolors = true


-- Mappings

-- Map FZF Commands to Keyboard shortcuts
-- nmap ff :Files<CR>
-- nmap fw :Ag<CR>

-- Nerd Tree
vim.keymap.set('n','<C-n>', '<cmd>NERDTree<cr>')
vim.keymap.set('n','<C-t>', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<C-f>', 'NERDTreeFind<CR>')
vim.keymap.set('n', '<C-b>', 'BlamerToggle<CR>')

local Plug = vim.fn['plug#']
-- Plugins
vim.call('plug#begin')

	-- Fuzzy finder
	Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
	Plug 'junegunn/fzf.vim'

	-- NerdTree
	Plug 'preservim/nerdtree'

	-- NerdTree plugins
	Plug 'ryanoasis/vim-devicons'
	Plug 'Xuyuanp/nerdtree-git-plugin'

	-- Treesitter
	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

	-- Themes
	-- https://github.com/EdenEast/nightfox.nvim
	Plug 'EdenEast/nightfox.nvim' 

	-- Status Line
	Plug 'feline-nvim/feline.nvim'

	-- Git Diff
	Plug 'nvim-lua/plenary.nvim'
	Plug 'sindrets/diffview.nvim'

	-- Git Blamer
	Plug 'APZelos/blamer.nvim'

	-- Neo Formatter
	Plug 'sbdchd/neoformat'

	-- Icons
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'lewis6991/gitsigns.nvim'

	-- Fuzzy Finder (2)
	Plug 'nvim-lua/plenary.nvim'
	Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.1' })

vim.call('plug#end')

-- Require Lua Modules
require('edenfox-feline')
require('icons')
require('gitsigns').setup()
require('nightfox')
require('nvim-treesitter')

-- Fuzzy Finder Mappings
vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', 'fs', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')

vim.cmd('colorscheme carbonfox') 
