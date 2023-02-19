vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local neo_tree_status, neo_tree = pcall(require, "neo-tree")
if not neo_tree_status then
	return
end

neo_tree.setup({
	close_if_last_window = true,
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = false,
	default_component_configs = {
		indent = {
			indent_size = 2,
			padding = 0,
			with_markers = true,
			indent_marker = "│",
			last_indent_marker = "└",
			highlight = "NeoTreeIndentMarker",
			with_expanders = false,
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
		icon = {
			folder_closed = "",
			folder_open = "",
			folder_empty = "",
			default = "",
		},
		name = {
			trailing_slash = false,
			use_git_status_colors = true,
		},
	},
	window = {
		mappings = {
			["o"] = "open",
			["S"] = "open_split",
			["s"] = "open_vsplit",
			["C"] = "close_node",
			["."] = "set_root",
			["H"] = "toggle_hidden",
			["R"] = "refresh",
		},
	},
	nesting_rules = {},
	filesystem = {
		filtered_items = {
			visible = false,
			hide_dotfiles = true,
			hide_gitignored = false,
			hide_by_name = {
				".DS_Store",
				"thumbs.db",
				"node_modules",
				"__pycache__",
			},
		},
		follow_current_file = true,
		hijack_netrw_behavior = "open_current",
		use_libuv_file_watcher = true,
	},
	buffers = {
		show_unloaded = true,
		window = {
			mappings = {
				["bd"] = "buffer_delete",
			},
		},
	},
	event_handlers = {
		{
			event = "vim_buffer_enter",
			handler = function(_)
				if vim.bo.filetype == "neo-tree" then
					vim.wo.signcolumn = "auto"
				end
			end,
		},
	},
})
