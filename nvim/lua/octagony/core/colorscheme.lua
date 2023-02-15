local theme_status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
if not theme_status then
	print("Colorscheme not found!")
	return
end
