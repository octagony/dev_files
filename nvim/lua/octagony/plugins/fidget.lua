local fidget_status, fidget = pcall(require, "fidget")
if not fidget_status then
	return
end

fidget.setup({
	timer = {
		spinner_rate = 125,
		fidget_decay = 1000,
		task_decay = 500,
	},
	window = {
		relative = "win",
		blend = 100,
		zindex = 1,
		border = "none",
	},
})
