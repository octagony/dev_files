local noice_status, noice = pcall(require, "noice")
if not noice_status then
	return
end

noice.setup({})
