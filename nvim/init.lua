-- Core
require("octagony.plugins-setup")
require("octagony.core.options")
require("octagony.core.keymaps")
require("octagony.core.colorscheme")

-- General plugins
require("octagony.plugins.nvim-tree")
require("octagony.plugins.comment")
require("octagony.plugins.lualine")
require("octagony.plugins.bufferline")
require("octagony.plugins.telescope")
require("octagony.plugins.cmp")
require("octagony.plugins.autopairs")
require("octagony.plugins.treesitter")
require("octagony.plugins.gitsigns")
require("octagony.plugins.colorizer")
require("octagony.plugins.ts-autotag")
require("octagony.plugins.fidget")
require("octagony.plugins.noice")
require("octagony.plugins.notify")

--LSP
require("octagony.plugins.lsp.mason")
require("octagony.plugins.lsp.lspconfig")
require("octagony.plugins.lsp.lspsaga")
require("octagony.plugins.lsp.null-ls")
