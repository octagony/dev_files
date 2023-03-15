local web_devicons_status, web_devicons = pcall(require, "nvim-web-devicons")
if not web_devicons_status then
	return
end

web_devicons.setup({
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "Zsh",
		},
		astro = {
			icon = "",
			color = "#fab387",
			cterm_color = "65",
			name = "astro",
		},
	},
})
