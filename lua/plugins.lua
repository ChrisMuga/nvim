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

	-- NerdTree
	use 'preservim/nerdtree'

	-- NerdTree plugins
	use 'ryanoasis/vim-devicons'
	use 'Xuyuanp/nerdtree-git-plugin'

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
	use 'nvim-pack/nvim-spectre'

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
end)



