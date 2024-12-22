local cmp = require("cmp")
local cmp_format = require("lsp-zero").cmp_format({ details = true })

-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion

cmp.setup({
	sources = {
		-- uncomment this for full autocomplete
		{ name = "nvim_lsp" },
		{ name = "buffer" },
	},
	mapping = {
		["<Tab>"] = cmp.mapping.select_next_item({ behavior = "select" }),
		["<Esc>"] = cmp.mapping.abort(),
		["<Up>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
		["<Down>"] = cmp.mapping.select_next_item({ behavior = "select" }),
		["<C-p>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item({ behavior = "insert" })
			else
				cmp.complete()
			end
		end),
		["<Enter>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<C-n>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item({ behavior = "insert" })
			else
				cmp.complete()
			end
		end),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	--- (Optional) Show source name in completion menu
	formatting = cmp_format,
})
