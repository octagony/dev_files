local fn = vim.fn

--Automatically install packer

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
	},
})

return packer.startup(function(use)
	-- PLUGINS LIST START

	-- Packer
	use("wbthomason/packer.nvim")

	--Alpha starter screen
	use({
		"goolord/alpha-nvim",
		config = function()
			require("octagony.plugins.alpha")
		end,
	})

	--Catppuccin theme
	use({ "catppuccin/nvim", as = "catppuccin" })
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

	--Neo Tree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})

	-- Replace "/'
	use("tpope/vim-surround")

	-- Commenting
	use("numToStr/Comment.nvim")

	-- VSCode icons
	use("kyazdani42/nvim-web-devicons")

	-- StatusLine
	use("nvim-lualine/lualine.nvim")

	--Bufferline
	use("akinsho/bufferline.nvim")

	--Telescope
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.1", requires = { { "nvim-lua/plenary.nvim" } } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	--Autopairs
	use("windwp/nvim-autopairs")

	--TS Autotag
	use("windwp/nvim-ts-autotag")

	-- Visual Multi
	use("mg979/vim-visual-multi")

	--Wildfire
	use("gcmt/wildfire.vim")

	--LSP
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")

	-- LSPSaga
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})

	-- Typescript LSP Features
	use("jose-elias-alvarez/typescript.nvim")

	-- LSPKind pictograms
	use("onsails/lspkind.nvim")

	--Mason
	use({ "williamboman/mason.nvim", build = ":MasonUpdate" })
	use("williamboman/mason-lspconfig.nvim")

	--CMP
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	--Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	--Null-LS
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	--Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	--Git signs
	use("lewis6991/gitsigns.nvim")

	--Colorizer
	use("norcalli/nvim-colorizer.lua")

	--Markdown Preview
	use({ "iamcco/markdown-preview.nvim" })

	--PLUGINS LIST END
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
