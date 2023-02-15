local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		formatting.prettierd,
		formatting.stylua,
		formatting.rustfmt,
		diagnostics.eslint_d.with({
			diagnostics_format = "[eslint] #{m}\n(#{c})",
		}),
		diagnostics.fish,
	},
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
