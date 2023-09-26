local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

local function formatForTailwindCSS(entry, vim_item)
	if vim_item.kind == "Color" and entry.completion_item.documentation then
		local _, _, r, g, b = string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
		if r then
			local color = string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
			local group = "Tw_" .. color
			if vim.fn.hlID(group) < 1 then
				vim.api.nvim_set_hl(0, group, { fg = "#" .. color })
			end
			vim_item.kind = "●"
			vim_item.kind_hl_group = group
			return vim_item
		end
	end
	vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
	return vim_item
end

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "vsnip" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "nvim_lsp_signature_help" },
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			before = function(entry, vim_item)
				vim_item = formatForTailwindCSS(entry, vim_item)
				return vim_item
			end,
		}),
	},
})

cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" },
	}, { { name = "buffer" } }),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = { { name = "buffer" } },
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
})
