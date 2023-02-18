local alpha_status, alpha = pcall(require, "alpha")
if not alpha_status then
	return
end

local dashboard_status, dashboard = pcall(require, "alpha.themes.dashboard")
if not dashboard_status then
	return
end

dashboard.section.header.val = {
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

dashboard.section.buttons.val = {
	dashboard.button("n", "  New File", "<CMD>ene!<CR>"),
	dashboard.button("f", "  Find File", "<CMD>Telescope find_files<CR>"),
	dashboard.button("r", "  Recent Files", "<CMD>Telescope oldfiles<CR>"),
	dashboard.button("t", "  Find in Files", "<CMD>Telescope live_grep<CR>"),
	dashboard.button("c", "  Configuration", "<CMD>cd $HOME/.config/nvim | Telescope find_files<CR>"),
}
dashboard.section.buttons.opts.hl = "Comment"

alpha.setup(dashboard.opts)
