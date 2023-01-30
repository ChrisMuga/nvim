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


