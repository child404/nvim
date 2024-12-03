local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Set <leader> key
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- Remap hjkl to jkl;
map("", ";", "l", opts)
map("", "l", "k", opts)
map("", "k", "j", opts)
map("", "j", "h", opts)

-- Easier backspace
map("i", "<C-j>", "<BS>", opts)
map("c", "<C-j>", "<BS>", opts)

-- Easier window navigation
map("n", "<C-j>", "<C-w>h", opts)
map("n", "<C-k>", "<C-w>j", opts)
map("n", "<C-l>", "<C-w>k", opts)
map("n", "<C-;>", "<C-w>l", opts)

-- Easier window resizing
map("n", "<M-t>", ":resize +1<cr>", opts)
map("n", "<M-s>", ":resize -1<cr>", opts)
map("n", "<M-.>", ":vertical resize +5<cr>", opts)
map("n", "<M-,>", ":vertical resize -5<cr>", opts)

map("n", "<leader>bk", ":bnext | bdelete #<cr>", opts)

map("n", "<leader>pv", ":Ex<cr>", opts)
map("n", "<leader><leader>", ":so<cr>", opts)

map("v", "K", ":m '>+1<cr>gv=gv", opts)
map("v", "L", ":m '<-2<cr>gv=gv", opts)

map("n", "Y", "yg$", opts)
map("n", "J", "mzJ`z", opts)

map("x", "<leader>p", "\"_dP", opts)
map("n", "<leader>d", "\"_d", opts)
map("v", "<leader>d", "\"_d", opts)

map("n", "Q", "<nop>", opts)

map("n", "<C-n>", ":cnext<cr>")
map("n", "<C-p>", ":cprev<cr>")
map("n", "<M-n>", ":lnext<cr>")
map("n", "<M-p>", ":lprev<cr>")

map("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
