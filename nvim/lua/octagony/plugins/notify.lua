require("notify").setup({
	background_colour = "NotifyBackground",
	fps = 30,
	icons = {
		DEBUG = "",
		ERROR = " ",
		INFO = " ",
		TRACE = "✎",
		WARN = "",
	},
	level = 2,
	minimum_width = 20,
	render = "minimal",
	stages = "static",
	timeout = 2000,
	top_down = true,
})
