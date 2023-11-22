return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "luacheck",
      "tailwindcss-language-server",
      "typescript-language-server",
      "astro-language-server",
      "angular-language-server",
      "vue-language-server",
      "intelephense",
      "pretty-php",
      "css-lsp",
    })
  end,
}
