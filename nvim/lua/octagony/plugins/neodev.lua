require("neodev").setup({
	library = {
		enabled = true,
		runtime = true,
		types = true,
		plugins = { "telescope.nvim" },
	},
	setup_jsonls = true,
	lspconfig = true,
	pathStrict = true,
})
