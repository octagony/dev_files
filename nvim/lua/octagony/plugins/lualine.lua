local lualine_status, lualine = pcall(require, "lualine")
if not lualine_status then
	return
end

local colors = {
	blue = "#89b4fa",
	teal = "#94e2d5",
	black = "#181825",
	white = "#cdd6f4",
	red = "#f38ba8",
	mauve = "#cba6f7",
	grey = "#313244",
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.mauve },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.teal } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

lualine.setup({
	options = {
		theme = bubbles_theme,
		component_separators = "|",
	},
	sections = {
		lualine_a = {
			{ "mode" },
		},
		lualine_b = { "branch", { "filename", file_status = true, path = 0 } },
		lualine_c = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
		},
		lualine_x = {},
		lualine_y = { "filetype" },
		lualine_z = {
			{ "location" },
		},
	},
	inactive_sections = {
		lualine_a = { { "filename", file_status = true, path = 1 } },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = { "nvim-tree" },
})
