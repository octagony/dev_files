vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then
	return
end

nvim_tree.setup({
	sort_by = "case_sensitive",
	view = {
		width = 25,
		side = "right",
		mappings = {
			list = {
				{ key = "S", action = "vsplit" },
				{ key = "s", action = "split" },
				{ key = "t", action = "tabnew" },
			},
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	filters = {
		custom = {
			"^.git$",
			"^node_modules$",
		},
	},
	git = {
		enable = false,
	},
	log = {
		enable = true,
		types = {
			diagnostics = true,
		},
	},
	renderer = {
		group_empty = true,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		debounce_delay = 50,
		icons = {
			hint = " ",
			info = " ",
			warning = " ",
			error = " ",
		},
	},
})
