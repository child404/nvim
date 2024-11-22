local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Remap hjkl to jkl;
map("", ";", "l", opts)
map("", "l", "k", opts)
map("", "k", "j", opts)
map("", "j", "h", opts)
map("i", "<C-j>", "<BS>", opts)
map("c", "<C-j>", "<BS>", opts)
map("n", "<C-w>j", "<C-w>h", opts)
map("n", "<C-w>k", "<C-w>j", opts)
map("n", "<C-w>l", "<C-w>k", opts)
map("n", "<C-w>;", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Down>", ":resize +3<cr>", opts)
map("n", "<C-Up>", ":resize -3<cr>", opts)
map("n", "<C-Right>", ":vertical resize +3<cr>", opts)
map("n", "<C-Left>", ":vertical resize -3<cr>", opts)

-- Easier buffer navigation
map("n", "K", ":bnext<cr>", opts)
map("n", "L", ":bprevious<cr>", opts)
map("n", "<leader>bk", ":bdelete<cr>", opts)

map("n", "<leader>pv", ":Ex<cr>", opts)
map("n", "<leader>qq", ":q<cr>", opts)
map("n", "<leader>qw", ":qw<cr>", opts)
map("n", "<leader>q!", ":q1<cr>", opts)
