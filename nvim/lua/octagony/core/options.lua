local opt = vim.opt

--Encoding
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

--Numbers
opt.number = true
opt.relativenumber = true

--Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 5
opt.expandtab = true
opt.autoindent = true

-- Wrapping
opt.wrap = true

-- Smart search
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Scroll
opt.scrolloff = 5
opt.sidescrolloff = 5

-- Mouse
opt.mouse = "a"

-- Search
opt.hlsearch = true
opt.incsearch = true

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Append '-'
opt.iskeyword:append("-")

-- No Swap
opt.swapfile = false

-- Autoread
opt.autoread = true
vim.bo.autoread = true

-- Highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 300,
		})
	end,
})

-- Custom copy to clipboard function
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	once = true,
	callback = function()
		if vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1 then
			vim.g.clipboard = {
				copy = {
					["+"] = "win32yank.exe -i --crlf",
					["*"] = "win32yank.exe -i --crlf",
				},
				paste = {
					["+"] = "win32yank.exe -o --lf",
					["*"] = "win32yank.exe -o --lf",
				},
			}
		elseif vim.fn.has("unix") == 1 then
			if vim.fn.executable("xclip") == 1 then
				vim.g.clipboard = {
					copy = {
						["+"] = "xclip -selection clipboard",
						["*"] = "xclip -selection clipboard",
					},
					paste = {
						["+"] = "xclip -selection clipboard -o",
						["*"] = "xclip -selection clipboard -o",
					},
				}
			elseif vim.fn.executable("xsel") == 1 then
				vim.g.clipboard = {
					copy = {
						["+"] = "xsel --clipboard --input",
						["*"] = "xsel --clipboard --input",
					},
					paste = {
						["+"] = "xsel --clipboard --output",
						["*"] = "xsel --clipboard --output",
					},
				}
			end
		end

		vim.opt.clipboard = "unnamedplus"
	end,
	desc = "Lazy load clipboard",
})
