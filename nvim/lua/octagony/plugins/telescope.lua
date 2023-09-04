local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fw", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
keymap.set("n", "<leader>gb", builtin.git_branches, {})
keymap.set("n", "<leader>gc", builtin.git_commits, {})
keymap.set("n", "<leader>gs", builtin.git_status, {})
keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, {})
keymap.set("n", "gr", builtin.lsp_references, { noremap = true, silent = true })
keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })

local telescope_actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		path_display = { "truncate" },
		sorting_strategy = "ascending",
		layout_config = {
			horizontal = {
				prompt_position = "bottom",
				preview_width = 0.55,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
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
