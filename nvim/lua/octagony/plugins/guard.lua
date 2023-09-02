local ft = require("guard.filetype")

--C Formatter
ft("c"):fmt("clang-format")
--Web formatters
ft("html,css,typescript,javascript,javascriptreact,typescriptreact,svelte,vue,graphql"):fmt("prettierd")
--Rust formatter
ft("rust"):fmt("rustfmt")
--Lua formatter
ft("lua"):fmt("stylua")

require("guard").setup({
	fmt_on_save = true,
	lsp_as_default_formatter = false,
})
