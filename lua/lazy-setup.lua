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
	-- Neo Formatter
	{
		"sbdchd/neoformat",
	},
	"nvim-telescope/telescope-media-files.nvim",
	-- Icons
	"nvim-tree/nvim-web-devicons",
	"lewis6991/gitsigns.nvim",
	-- Fuzzy Finder (2)
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					preview = {
						mime_hook = function(filepath, bufnr, opts)
							local is_image = function(filepath)
								local image_extensions = { "png", "jpg", "svg" } -- Supported image formats
								local split_path = vim.split(filepath:lower(), ".", { plain = true })
								local extension = split_path[#split_path]
								return vim.tbl_contains(image_extensions, extension)
							end
							if is_image(filepath) then
								local term = vim.api.nvim_open_term(bufnr, {})
								local function send_output(_, data, _)
									for _, d in ipairs(data) do
										vim.api.nvim_chan_send(term, d .. "\r\n")
									end
								end
								vim.fn.jobstart({
									"catimg",
									filepath, -- Terminal image viewer command
								}, { on_stdout = send_output, stdout_buffered = true, pty = true })
							else
								require("telescope.previewers.utils").set_preview_message(
									bufnr,
									opts.winid,
									"Binary cannot be previewed"
								)
							end
						end,
					},
				},
				pickers = {
					colorscheme = {
						enable_preview = true,
					},
				},
			})
		end,
		keys = {
			{ "<leader><leader>", "<cmd>Telescope find_files<cr>" }, -- Find file
			{ "ff", "<cmd>Telescope find_files<cr>" }, -- Find file
			{ "fs", "<cmd>Telescope live_grep<cr>" }, -- Find String
			{ "gs", "<cmd>Telescope grep_string<cr>" }, -- Grep String Under Cursor
			{ "fb", "<cmd>Telescope buffers<cr>" }, -- Find Open Files (in Buffer)
			{ "fc", "<cmd>Telescope oldfiles<cr>" }, -- Find Closed Files (in Buffer)
			{ "fh", "<cmd>Telescope help_tags<cr>" },
			{ "ft", "<cmd>Telescope colorscheme<cr>" },
			{ "fg", "<cmd>Telescope git_status<cr>" },
			{ "<leader>sa", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", mode = { "v" } },
		},
	},
	"nvim-pack/nvim-spectre",
	-- Set Transparent Background
	"xiyaowong/transparent.nvim",
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
	require("plugins.pomo"),
	require("plugins.melange"),
	require("plugins.todo-comments"),
	require("plugins.lazy-git"),
	require("plugins.trouble"),
	require("plugins.stylua-nvim"),
	require("plugins.oil"),
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
