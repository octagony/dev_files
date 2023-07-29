local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	ui = {
		border = "rounded",
		winblend = 0,
		kind = {},
	},
	symbol_in_winbar = {
		separator = "   ",
		respect_root = true,
		color_mode = false,
	},
	rename = {
		quit = "q",
		exec = "<CR>",
	},
	finder = {
		open = "o",
		vsplit = "v",
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
