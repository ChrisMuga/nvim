vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " " -- Same for `maplocalleader`
plugins = {
	-- Fuzzy finder
	{
		'junegunn/fzf',
		build=vim.fn['fzf#install']
	},

	-- Treesitter
	{
		'nvim-treesitter/nvim-treesitter'
	},

	-- Themes
	-- https://github.com/EdenEast/nightfox.nvim
	'EdenEast/nightfox.nvim',
	'folke/tokyonight.nvim',
	-- Catppuccin Theme
	{ "catppuccin/nvim", name="catppuccin" },
	-- Solarized
	'maxmx03/solarized.nvim',
	-- Status Line
	'feline-nvim/feline.nvim',
	-- Git Diff
	'sindrets/diffview.nvim',
	-- Git Blamer
	'APZelos/blamer.nvim',
	-- Neo Formatter
	'sbdchd/neoformat',
	-- Icons
	'nvim-tree/nvim-web-devicons',
	'lewis6991/gitsigns.nvim',
	-- Fuzzy Finder (2)
	'nvim-lua/plenary.nvim',
	{'nvim-telescope/telescope.nvim',
		config=function()
			require "telescope".setup {
			  pickers = {
				colorscheme = {
				  enable_preview = true
				}
			  }
		  }
		  end,
		  keys = {
				{'<leader>ff', '<cmd>Telescope find_files<cr>'}, -- Find file
				{'<leader>fs', '<cmd>Telescope live_grep<cr>'}, -- Find String
				{'<leader>gs', '<cmd>Telescope grep_string<cr>'},-- Grep String Under Cursor
				{'<leader>fb', '<cmd>Telescope buffers<cr>'},-- Find Open Files (in Buffer)
				{'<leader>fc', '<cmd>Telescope oldfiles<cr>'},-- Find Closed Files (in Buffer)
				{'<leader>fh', '<cmd>Telescope help_tags<cr>'},
				{'<leader>ft', '<cmd>Telescope colorscheme<cr>'},
				{'<leader>fg', '<cmd>Telescope git_status<cr>'},
		  }
	},
	'nvim-pack/nvim-spectre',
	{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
		dependencies = {
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
		  -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			{ '<C-t>', '<cmd>Neotree toggle<cr>' },
			{ '<C-f>', '<cmd>Neotree reveal<cr>' }
		},
		lazy=false
	},
	-- Set Transparent Background
	'xiyaowong/transparent.nvim',
	-- Comments
	{
		"terrortylor/nvim-comment",
		config = function()
			require('nvim_comment').setup()
		end,
		dependencies={
			{
				"kylechui/nvim-surround",
				config = function()
					require("nvim-surround").setup({})
				end
			}
		}
	},
	-- Everforest theme
	{
	  "neanias/everforest-nvim",
	  -- Optional; default configuration will be used if setup isn't called.
	  config = function()
		require("everforest").setup()
	  end,
	},

	-- Sort
	{
	  'sQVe/sort.nvim',

	  -- Optional setup for overriding defaults.
	  config = function()
		require("sort").setup({
		  -- Input configuration here.
		  -- Refer to the configuration section below for options.
		})
	  end
	},
	'mg979/vim-visual-multi',
	-- LSP
	{
			'williamboman/mason.nvim',
			config = function()
				require("mason").setup()
			end
	},
	{
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  dependencies = {
		--- Uncomment the two plugins below if you want to manage the language servers from neovim
		{'williamboman/mason.nvim'},
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
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local opts = {}
require("lazy").setup(plugins, opts)
