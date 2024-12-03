local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>pv", ":NvimTreeToggle<cr>", opts)
map("n", "<leader>pf", ":NvimTreeFindFile<cr>", opts)
