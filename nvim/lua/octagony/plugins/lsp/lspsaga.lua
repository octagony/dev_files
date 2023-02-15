local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	error_sign = " ",
	warn_sign = " ",
	hint_sign = " ",
	infor_sign = " ",
	diagnostic_header_icon = " ",
	rename_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	finder_action_keys = {
		open = "o",
		vsplit = "v",
		split = "s",
		quit = "q",
		scroll_down = "<C-j>",
		scroll_up = "<C-k>",
	},
})
