local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Set <leader> key
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- Easier backspace
map("i", "<C-h>", "<BS>", opts)
map("c", "<C-h>", "<BS>", opts)

-- Easier window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Tab navigation
map("n", "<leader>tn", vim.cmd.tabnew)
map("n", "<C-S-h>", vim.cmd.tabp)
map("n", "<C-S-l>", vim.cmd.tabn)

-- Easier window resizing
map("n", "<M-t>", ":resize +1<cr>", opts)
map("n", "<M-s>", ":resize -1<cr>", opts)
map("n", "<M-.>", ":vertical resize +5<cr>", opts)
map("n", "<M-,>", ":vertical resize -5<cr>", opts)

map("n", "<leader>bk", ":bnext | bdelete #<cr>", opts)

map("n", "<leader><leader>", ":so<cr>", opts)

map("v", "J", ":m '>+1<cr>gv=gv", opts)
map("v", "K", ":m '<-2<cr>gv=gv", opts)

map("n", "Y", "yg$", opts)
map("n", "H", "mzJ`z", opts)

map("x", "<leader>p", '"_dP', opts)
map("n", "<leader>d", '"_d', opts)
map("v", "<leader>d", '"_d', opts)

map("n", "Q", "<nop>", opts)

map("n", "<C-n>", ":cnext<cr>")
map("n", "<C-p>", ":cprev<cr>")
map("n", "<M-n>", ":lnext<cr>")
map("n", "<M-p>", ":lprev<cr>")

map("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
map("n", "<leader>mp", vim.cmd.MarkdownPreview)
map("n", "<leader>ms", vim.cmd.MarkdownPreviewStop)
map("n", "<leader>mt", vim.cmd.MarkdownPreviewToggle)
