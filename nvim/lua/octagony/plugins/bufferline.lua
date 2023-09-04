local keymap = vim.keymap

require("bufferline").setup({
	options = {
		mode = "tabs",
		separator_style = "slant",
		always_show_bufferline = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		separator = {
			fg = "#313244",
			bg = "#181825",
		},
		separator_selected = {
			fg = "#313244",
		},
		background = {
			fg = "#657b83",
			bg = "#181825",
		},
		buffer_selected = {
			fg = "#cba6f7",
			bold = true,
		},
		fill = {
			bg = "#313244",
		},
	},
})

keymap.set("n", "<leader>tp", "<cmd>BufferLinePick<CR>")
