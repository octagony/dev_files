-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

keymap.set("n", "dw", "vb_d")
keymap.set("n", "<leader><S-a>", "gg<S-v>G", opts)
keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<leader>fw", builtin.live_grep, opts)
