-- style netrw
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- numbers
opt.relativenumber = true
opt.number = true

-- tabs & indenation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
opt.cursorline = true

-- Backspace
opt.backspace = "indent,eol,start"

-- basic theming
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
