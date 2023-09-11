-- Core
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- General
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("n", "x", '"_x', opts)

-- Select All
keymap.set("n", "<leader>sa", "gg<S-v>G", opts)

--Save/Quit
keymap.set("n", "<leader>w", "<cmd>:w<CR>", opts)
keymap.set("n", "<leader>q", "<cmd>:bdelete<CR>", opts)
keymap.set("n", "<S-q>", "<cmd>:qa<CR>", opts)

-- No highlights
keymap.set("n", "<leader>h", ":nohl<CR>", opts)

-- Split window
keymap.set("n", "<leader>sv", "<C-w>v", opts)
keymap.set("n", "<leader>sh", "<C-w>s", opts)
keymap.set("n", "<leader>se", "<C-w>=", opts)
keymap.set("n", "<leader>sx", ":close<CR>", opts)

-- CTRL+{h,j,k,l} for navigation between windows
keymap.set("", "<C-h>", "<C-w>h", opts)
keymap.set("", "<C-k>", "<C-w>k", opts)
keymap.set("", "<C-j>", "<C-w>j", opts)
keymap.set("", "<C-l>", "<C-w>l", opts)

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)
keymap.set("n", "<S-l>", ":tabn<CR>", opts)
keymap.set("n", "<S-h>", ":tabp<CR>", opts)

--Neotree toggle
keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)
