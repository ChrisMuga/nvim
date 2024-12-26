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
}
