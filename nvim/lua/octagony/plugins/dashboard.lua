local function default_header()
	return {
		"",
		" ██████╗  ██████╗████████╗ █████╗ ",
		"██╔═══██╗██╔════╝╚══██╔══╝██╔══██╗",
		"██║   ██║██║        ██║   ███████║",
		"██║   ██║██║        ██║   ██╔══██║",
		"╚██████╔╝╚██████╗   ██║   ██║  ██║",
		" ╚═════╝  ╚═════╝   ╚═╝   ╚═╝  ╚═╝",
		" ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
		" ████╗  ██║██║   ██║██║████╗ ████║",
		" ██╔██╗ ██║██║   ██║██║██╔████╔██║",
		" ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
		" ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
		" ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
	}
end

require("dashboard").setup({
	theme = "doom",
	config = {
		header = default_header(),
		center = {
			{
				icon = "󰙅 ",
				icon_hl = "Title",
				desc = "Open tree",
				desc_hl = "String",
				key = "e",
				keymap = "SPC e",
				key_hl = "Number",
				action = ":Neotree toggle",
			},
			{
				icon = "󰈞 ",
				icon_hl = "Title",
				desc = "Find files",
				desc_hl = "String",
				key = "f",
				keymap = "SPC f f",
				key_hl = "Number",
				action = ":Telescope find_files",
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Find text",
				desc_hl = "String",
				key = "w",
				keymap = "SPC f w",
				key_hl = "Number",
				action = ":Telescope live_grep",
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Config",
				desc_hl = "String",
				key = "c",
				keymap = "SPC c",
				key_hl = "Number",
				action = "cd $HOME/.config/nvim | Telescope find_files",
			},
		},
	},
})
