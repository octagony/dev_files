require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettierd" } },
    typescript = { { "prettierd" } },
    vue = { { "prettierd" } },
    svelte = { { "prettierd" } },
  },
  format_on_save = {
    timeout_ms = 100,
    lsp_fallback = true,
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
