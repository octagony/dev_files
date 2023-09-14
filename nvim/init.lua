--
-- ██████╗  ██████╗████████╗ █████╗
--██╔═══██╗██╔════╝╚══██╔══╝██╔══██╗
--██║   ██║██║        ██║   ███████║
--██║   ██║██║        ██║   ██╔══██║
--╚██████╔╝╚██████╗   ██║   ██║  ██║
-- ╚═════╝  ╚═════╝   ╚═╝   ╚═╝  ╚═╝
-- ███╗   ██╗██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██║   ██║██║████╗ ████║
-- ██╔██╗ ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Core
require("octagony.core.plugins")
require("octagony.core.options")
require("octagony.core.keymaps")
require("octagony.core.colorscheme")

-- Plugins
require("octagony.plugins.neo-tree")
require("octagony.plugins.treesitter")
require("octagony.plugins.telescope")
require("octagony.plugins.autopairs")
require("octagony.plugins.lualine")
require("octagony.plugins.autotag")
require("octagony.plugins.bufferline")
require("octagony.plugins.comment")
require("octagony.plugins.dashboard")
require("octagony.plugins.gitsigns")
require("octagony.plugins.colorizer")
require("octagony.plugins.web-devicons")
require("octagony.plugins.lspkind")
require("octagony.plugins.neodev")
require("octagony.plugins.guard")
require("octagony.plugins.floating-help")
require("octagony.plugins.better-escape")
require("octagony.plugins.template-string")

-- LSP
require("octagony.plugins.lsp.lspconfig")
require("octagony.plugins.lsp.cmp")
require("octagony.plugins.lsp.mason")
require("octagony.plugins.lsp.lspsaga")
