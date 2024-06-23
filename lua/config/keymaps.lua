-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("akito.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment / Decrement numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>w", ":w<Return>")
keymap.set("n", "<leader>q", ":q<Return>")

-- Jump to newline
keymap.set("i", "<C-l>b", "<C-o>o", opts) -- Newline below
keymap.set("i", "<C-l>a", "<C-o><S-o>", opts) -- Newline above

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jump list
keymap.set("n", "<C-m>", "<C-i>", opts)

-- NvimTree Settings
keymap.set("n", "<leader>tt", ":NvimTreeToggle<Return>", opts)
keymap.set("n", "<leader>tf", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<leader>tc", ":NvimTreeCollapse<Return>", opts)
keymap.set("n", "<leader>tr", ":NvimTreeFindFile<Return>", opts)

-- Copy to clipboard
keymap.set("v", "<leader>y", '"+y')
keymap.set("v", "<leader>Y", 'V"+y')
keymap.set("n", "<leader>Y", '"+yy')

-- Paste from clipboard
keymap.set({ "n", "v" }, "<leader>p", '"+p')
keymap.set({ "n", "v" }, "<leader>P", '"+P')

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "tn", ":tabnext<Return>", opts)
keymap.set("n", "tp", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":bd<Return>", opts)

-- Formatter
keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize Window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
