return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function() 
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "",
      "",
      "",
      " ██████╗  ██████╗████████╗ █████╗ ",
      "██╔═══██╗██╔════╝╚══██╔══╝██╔══██╗",
      "██║   ██║██║        ██║   ███████║",
      "██║   ██║██║        ██║   ██╔══██║",
      "╚██████╔╝╚██████╗   ██║   ██║  ██║",
      " ╚═════╝  ╚═════╝   ╚═╝   ╚═╝  ╚═╝",
      " ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
      " ████╗  ██║██║   ██║██║████╗ ████║",
      " ██╔██╗ ██║██║   ██║██║██╔████╔██║",
      " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      " ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "",
      "",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New file", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰈞  > Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find word", "<cmd>Telescope live_grep<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd Filetype alpha setlocal nofoldenable]])
  end
}

