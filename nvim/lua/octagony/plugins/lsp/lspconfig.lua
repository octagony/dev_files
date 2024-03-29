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
	settings = {
		css = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
		scss = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
		less = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
	},
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
	settings = {
		css = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
		scss = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
		less = {
			validate = true,
			lint = {
				unknownAtRules = "ignore",
			},
		},
	},
	capabilities = capabilities,
})

--Rust server
lspconfig.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = true,
			},
		},
	},
})

--GraphQL server
lspconfig.graphql.setup({
	cmd = { "graphql-lsp", "server", "-m", "stream" },
	filetypes = { "graphql", "typescriptreact", "javascriptreact" },
})

--JSON server
lspconfig.jsonls.setup({
	capabilities = capabilities,
})

--YAML server
lspconfig.yamlls.setup({
	settings = {
		yaml = {
			schemas = {
				["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
				["../path/relative/to/file.yml"] = "/.github/workflows/*",
				["/path/from/root/of/project"] = "/.github/workflows/*",
			},
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
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

vim.cmd([[ autocmd BufRead, BufNewFile *.slint set filetype=slint]])
