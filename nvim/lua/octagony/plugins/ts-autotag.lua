local ts_autotag_status, ts_autotag = pcall(require, "nvim-ts-autotag")
if not ts_autotag_status then
	return
end

ts_autotag.setup({})
