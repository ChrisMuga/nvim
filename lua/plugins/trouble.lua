return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy=false,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("trouble").setup()
	end,
	keys = {
	 {
		  "<leader>xx",
		  "<cmd>Trouble diagnostics toggle<cr>",
		  desc = "Diagnostics (Trouble)",
		},
	}
}
