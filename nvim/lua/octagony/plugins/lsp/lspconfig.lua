local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local typescript = require("typescript")
local lspconfig = require("lspconfig")

-- Lua server
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

--Astro server
lspconfig.astro.setup({
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
})

--Tailwind server
lspconfig.tailwindcss.setup({
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = {
		"astro",
		"astro-markdown",
		"ejs",
		"html",
		"html-eex",
		"css",
		"less",
		"postcss",
		"sass",
		"scss",
		"stylus",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
	},
})

-- TS server
lspconfig.tsserver.setup({
	capabilities = capabilities,
})

--Prisma server
lspconfig.prismals.setup({
	cmd = { "prisma-languange-server", "--stdio" },
	filetypes = { "prisma" },
})

--Svelte server
lspconfig.svelte.setup({
	server = {
		capabilities = capabilities,
		filetypes = {
			"svelte",
		},
		cmd = { "svelteserver", "--stdio" },
	},
})

--Vue server
lspconfig.volar.setup({
	filetypes = {
		"vue",
	},
	cmd = { "vue-language-server", "--stdio" },
})

--CSS server
lspconfig.cssls.setup({
	capabilities = capabilities,
})

--Rust server
lspconfig.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = true,
				experimental = {
					enable = true,
				},
			},
		},
	},
})

--Typescript server
typescript.setup({
	server = {
		capabilities = capabilities,
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		cmd = { "typescript-language-server", "--stdio" },
	},
})

vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<Leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "● ",
	},
	update_in_insert = true,
	float = {
		source = "always",
	},
})
