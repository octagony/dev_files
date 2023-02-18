vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local neo_tree_status, neo_tree = pcall(require, "neo-tree")
if not neo_tree_status then
	return
end

neo_tree.setup({
	close_if_last_window = true,
	enable_git_status = false,
	indent = {
		padding = 0.5,
	},
	window = {
		mappings = {
			["o"] = "open",
		},
	},
})
