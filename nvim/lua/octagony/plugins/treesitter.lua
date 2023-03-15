local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
	return
end

treesitter.setup({
	highilght = {
		enable = true,
		disable = {},
	},
	indent = { enable = true, disable = {} },
	autotag = { enable = true },
	ensure_installed = {
		"markdown",
		"markdown_inline",
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
		"prisma",
		"astro",
	},
	auto_install = true,
	rainbow = {
		enable = true,
		extended_mpde = true,
		max_file_lines = nil,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
