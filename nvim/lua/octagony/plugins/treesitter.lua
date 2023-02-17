local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
	return
end

treesitter.setup({
	highilght = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"astro",
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"rust",
	},
	auto_install = true,
	rainbow = {
		enable = true,
		extended_mpde = true,
		max_file_lines = nil,
	},
})
