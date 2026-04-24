return {
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
		{ "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Find File" }, -- Find file
		{ "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Find String" }, -- Find String
		{ "<leader>gs", "<cmd>Telescope grep_string<cr>" }, -- Grep String Under Cursor
		{ "<leader>b", "<cmd>Telescope buffers<cr>" }, -- Find Open Files (in Buffer)
		{ "<leader>c", "<cmd>Telescope oldfiles<cr>" }, -- Find Closed Files (in Buffer)
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>" },
		{ "<leader>ft", "<cmd>Telescope colorscheme<cr>", desc = "Find Theme" },
		{ "<leader>fg", "<cmd>Telescope git_status<cr>" },
		{ "<leader>t", "<cmd>Telescope telescope-tabs list_tabs<cr>" },
		{ "<leader>`", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", mode = { "v" } },
	},
}
