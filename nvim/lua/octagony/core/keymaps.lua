vim.g.mapleader = " "

local keymap = vim.keymap

--General
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "x", '"_x')

-- Select All
keymap.set("n", "<leader>sa", "gg<S-v>G")

--Save/Quit
keymap.set("n", "<leader>w", "<cmd>:w<CR>")
keymap.set("n", "<leader>q", "<cmd>:q<CR>")
keymap.set("n", "<S-q>", "<cmd>:qa<CR>")

-- No highlights
keymap.set("n", "<leader>h", ":nohl<CR>")

-- Split window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- CTRL+{h,j,k,l} for navigation between windows
keymap.set("", "<C-h>", "<C-w>h")
keymap.set("", "<C-k>", "<C-w>k")
keymap.set("", "<C-j>", "<C-w>j")
keymap.set("", "<C-l>", "<C-w>l")

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<S-l>", ":tabn<CR>")
keymap.set("n", "<S-h>", ":tabp<CR>")

--Neotree toggle
keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")

--Telescope actions
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
