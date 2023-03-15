local notify_status, notify = pcall(require, "notify")
if not notify_status then
	return
end

notify.setup({
	render = "minimal",
	timeout = 500,
	top_down = false,
})
