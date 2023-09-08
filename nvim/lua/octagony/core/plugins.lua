local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- SETUP START

	-- Neo-Tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},

	-- Telescope
	{ "nvim-telescope/telescope.nvim", tag = "0.1.2", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- LSP
	{ "neovim/nvim-lspconfig" },

	--LSPSaga
	{ "nvimdev/lspsaga.nvim", event = "LspAttach" },

	-- LSPKind Icons
	{ "onsails/lspkind.nvim" },

	-- Typescript LSP Features
	{ "jose-elias-alvarez/typescript.nvim" },

	-- Catppuccinplugins
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- CMP
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },

	-- Snippets
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },

	-- Mason
	{ "williamboman/mason.nvim", build = ":MasonUpdate" },

	-- Null-Ls
	{ "jose-elias-alvarez/null-ls.nvim" },

	--Guard Formatter
	{ "nvimdev/guard.nvim" },

	-- Autopairs
	{ "windwp/nvim-autopairs" },

	-- Autotag
	{ "windwp/nvim-ts-autotag" },

	-- Bufferline
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Lualine
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", opt = true } },

	-- Nvim Comment
	{ "terrortylor/nvim-comment" },

	-- Dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- GitSigns
	{ "lewis6991/gitsigns.nvim" },

	-- Colorizer
	{ "norcalli/nvim-colorizer.lua" },

	-- Surround
	{ "tpope/vim-surround" },

	--NeoDev
	{ "folke/neodev.nvim", opts = {} },

	--Noice
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	--Floating-Help
	{ "Tyler-Barham/floating-help.nvim" },

	--Better Escape
	{ "max397574/better-escape.nvim" },

	--Template String
	{ "axelvc/template-string.nvim" },
	-- SETUP END
})
