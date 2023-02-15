local notify_status, notify = pcall(require, "notify")
if not notify_status then
	return
end

notify.setup({
	render = "minimal",
	timeout = 1000,
	top_down = false,
})
