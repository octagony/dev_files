local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		vue = { "prettierd" },
		rust = { "rustfmt" },
	},
	format_on_save = {
		lsp_fallback = true,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ async = true, bufnr = args.buf })
	end,
})
