require("nvim-treesitter.configs").setup({
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"typescript",
		"tsx",
		"rust",
		"javascript",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
