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
require("octagony.plugins-setup")
require("octagony.core.options")
require("octagony.core.keymaps")
require("octagony.core.colorscheme")

-- General plugins
require("octagony.plugins.alpha")
require("octagony.plugins.neo-tree")
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
require("octagony.plugins.webdev-icons")

--LSP
require("octagony.plugins.lsp.mason")
require("octagony.plugins.lsp.lspconfig")
require("octagony.plugins.lsp.lspsaga")
require("octagony.plugins.lsp.null-ls")
