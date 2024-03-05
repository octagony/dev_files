local plugins = {
	--Mason
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"rust-analyzer",
				"typescript-language-server",
				"eslint-lsp",
				"prettier",
				"json-lsp",
				"yaml-language-server",
				"astro-language-server",
				"html-lsp",
				"css-lsp",
				"vue-language-server",
				"svelte-language-server",
				"tailwindcss-language-server",
				"prisma-language-server",
				"stylua",
			},
		},
	},

	--LSPConfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	--Nvim Linter
	{
		"mfussenegger/nvim-lint",
		event = "VeryLazy",
		config = function()
			require("custom.configs.lint")
		end,
	},
	--Rust Lang
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},

	--Rust Tools
	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		dependencies = "neovim/nvim-lspconfig",
		opts = function()
			return require("custom.configs.rust-tools")
		end,
		config = function(_, opts)
			require("rust-tools").setup(opts)
		end,
	},

	--DAP
	{
		"mfussenegger/nvim-dap",
		config = function()
			require("custom.configs.dap")
			require("core.utils").load_mappings("dap")
		end,
	},

	--DAP UI
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			require("dapui").setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},

	--Crates helper for Rust
	{
		"saecki/crates.nvim",
		dependencies = "hrsh7th/nvim-cmp",
		ft = { "rust", "toml" },
		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},

	--CMP
	{
		"hrsh7th/nvim-cmp",
		opts = function()
			local M = require("plugins.configs.cmp")
			table.insert(M.sources, { name = "crates" })
			return M
		end,
	},

	--Conform formatter
	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		opts = function()
			require("custom.configs.conform")
		end,
	},

	-- Vim-Tmux-Navigator
	{ "christoomey/vim-tmux-navigator", lazy = false },

	-- Comment
	{
		"numToStr/Comment.nvim",
		opts = function()
			require("custom.configs.comment")
		end,
		lazy = false,
	},

	-- Vim-blade
	{
		"jwalton512/vim-blade",
		event = "VeryLazy",
	},
}
return plugins
