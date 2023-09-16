local keymap = vim.keymap

require("lspsaga").setup({
	ui = {
		border = "rounded",
		winblend = 0,
		kind = {},
	},
	symbol_in_winbar = {
		separator = "   ",
		respect_root = true,
		color_mode = true,
	},
	rename = {
		quit = "q",
		exec = "<CR>",
	},
	finder = {
		open = "o",
		split = "s",
		quit = "q",
		scroll_down = "<C-j>",
		scroll_up = "<C-k>",
	},
	lightbulb = {
		enable = false,
	},
	outline = {
		layout = "float",
	},
})

local opts = { noremap = true, silent = true }

keymap.set("n", "gl", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "gd", "<Cmd>Lspsaga finder<CR>", opts)
keymap.set("n", "gt", "<Cmd>Lspsaga goto_type_definition<CR>", opts)
keymap.set("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
keymap.set("n", "]d", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap.set("n", "[d", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
