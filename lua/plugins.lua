-- Plugins
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'
	
	-- Fuzzy finder
	use('junegunn/fzf', { run = vim.fn['fzf#install']})

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

	-- Themes
	-- https://github.com/EdenEast/nightfox.nvim
	use 'EdenEast/nightfox.nvim' 
	use 'folke/tokyonight.nvim'
	-- Catppuccin Theme
	use { "catppuccin/nvim", as = "catppuccin" }
	-- Solarized
	use 'maxmx03/solarized.nvim'

	-- Status Line
	use 'feline-nvim/feline.nvim'

	-- Git Diff
	use 'sindrets/diffview.nvim'

	-- Git Blamer
	use 'APZelos/blamer.nvim'

	-- Neo Formatter
	use 'sbdchd/neoformat'

	-- Icons
	use 'nvim-tree/nvim-web-devicons'
	use 'lewis6991/gitsigns.nvim'

	-- Fuzzy Finder (2)
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	require "telescope".setup {
	  pickers = {
		colorscheme = {
		  enable_preview = true
		}
	  }
	}
	use 'nvim-pack/nvim-spectre'
	
	-- NerdTree
	use 'preservim/nerdtree'

	-- Set Transparent Background
	use 'xiyaowong/transparent.nvim'

	-- Comments
	use "terrortylor/nvim-comment"
	require('nvim_comment').setup()

	use({
	    "kylechui/nvim-surround",
	    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	    config = function()
		require("nvim-surround").setup({
		    -- Configuration here, or leave empty to use defaults
		})
	    end
	})

	-- Markdown Previews
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	-- Floating Terminal
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup({
			direction="float"
	  })
	end}
	-- Everforest theme
	use({
	  "neanias/everforest-nvim",
	  -- Optional; default configuration will be used if setup isn't called.
	  config = function()
		require("everforest").setup()
	  end,
	})

	-- Sort
	use({
	  'sQVe/sort.nvim',

	  -- Optional setup for overriding defaults.
	  config = function()
		require("sort").setup({
		  -- Input configuration here.
		  -- Refer to the configuration section below for options.
		})
	  end
	})

	-- LSP
	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
    {'L3MON4D3/LuaSnip'},
  }
}
end)
