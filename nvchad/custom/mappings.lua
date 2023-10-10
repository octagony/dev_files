local M = {}

M.general = {
  i = {
    ["jk"] = {
      "<ESC>",
      "Exit insert mode",
    },
  },
  n = {
    ["<leader>e"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle NvimTree",
    },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "Navigate window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "Navigate window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "Navigate window up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "Navigate window right" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue<CR>",
      "Run or continue the debugger",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.lsp = {
  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "Format w/ conform",
    },
       },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Upgrade all crates",
    },
  },
}
return M
