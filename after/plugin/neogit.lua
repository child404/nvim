require("neogit").setup()

local map = vim.keymap.set

map("n", "<leader>gs", vim.cmd.Neogit)
