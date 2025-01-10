vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " " -- Same for `maplocalleader`
local plugins = {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
	},
	-- Themes
	-- https://github.com/EdenEast/nightfox.nvim
	"EdenEast/nightfox.nvim",
	"folke/tokyonight.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	-- Catppuccin Theme
	{ "catppuccin/nvim", name = "catppuccin" },
	-- Solarized
	"maxmx03/solarized.nvim",
	"marko-cerovac/material.nvim",
	-- Status Line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},
	-- Git Diff
	"sindrets/diffview.nvim",
	-- Git Blamer
	{
		"APZelos/blamer.nvim",
		keys = {
			{ "<leader>b", "<cmd>BlamerToggle<cr>" },
		},
	},
	"nvim-telescope/telescope-media-files.nvim",
	-- Icons
	"nvim-tree/nvim-web-devicons",
	"lewis6991/gitsigns.nvim",
	-- Fuzzy Finder (2)
	"nvim-lua/plenary.nvim",
	"nvim-pack/nvim-spectre",
	-- Surround
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	-- Comments
	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
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
		"sQVe/sort.nvim",

		-- Optional setup for overriding defaults.
		config = function()
			require("sort").setup({
				-- Input configuration here.
				-- Refer to the configuration section below for options.
			})
		end,
	},
	"mg979/vim-visual-multi",
	-- LSP
	{
		"williamboman/mason.nvim",
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ "williamboman/mason.nvim" },
			"williamboman/mason-lspconfig.nvim",
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "L3MON4D3/LuaSnip" },
		},
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			-- options
		},
		config = function()
			require("fidget").setup({})
		end,
	},
	-- which key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{ "<leader>w", "<cmd>Whichkey<cr>" },
		},
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = {
			{ "tt", "<cmd>:ToggleTerm direction=float name=Terminal<cr>" },
		},
	},
	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true, -- or `opts = {}`
	},
	-- Scratch File
	{
		"LintaoAmons/scratch.nvim",
		event = "VeryLazy",
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
	-- Themes
	require("plugins.flow"),
	require("plugins.melange"),
	require("plugins.gruvbox"),
	--- 
	require("plugins.pomo"),
	require("plugins.todo-comments"),
	require("plugins.lazy-git"),
	require("plugins.trouble"),
	require("plugins.stylua-nvim"),
	require("plugins.oil"),
	require("plugins.telescope"),
	require("plugins.neoformat"),
	require("plugins.transparent-toggle"),
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
