local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
	return
end

local telescope_actions_status, telescope_actions = pcall(require, "telescope.actions")
if not telescope_actions_status then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		mappings = {
			n = {
				["q"] = telescope_actions.close,
			},
			i = {
				["<C-k>"] = telescope_actions.move_selection_previous,
				["<C-j>"] = telescope_actions.move_selection_next,
			},
		},
	},
})

telescope.load_extension("fzf")
