vim.g.mapleader = " " -- leader key is <Space>

local keymap = vim.keymap

-- general keymaps ("<what-mode>", "<key-to-use>", "<function-to-do>")
keymap.set("n", "x", '"_x') -- in normal mode delete without copying with x
keymap.set("i", "<C-H>", "<C-w>") -- Ctrl+Backspace -> delete word!

-- save and quit
keymap.set("n", "<leader>w", ":w<CR>") -- save file with space W (CR = enter)
keymap.set("n", "<leader>q", ":wq<CR>") -- save and quit file with space Q

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontal
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tabs
keymap.set("n", "<leader><C-n>", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader><C-b>", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader><Tab>", ":tabn<CR>") -- open new tab
keymap.set("n", "<leader><S-Tab>", ":tabp<CR>") -- open new tab

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
