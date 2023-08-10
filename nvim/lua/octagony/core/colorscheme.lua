vim.opt.termguicolors = true

function Set_theme(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
end

Set_theme()
