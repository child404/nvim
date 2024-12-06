require("neogit").setup({
	mappings = {
		status = {
			["k"] = "MoveDown",
			["l"] = "MoveUp",
		},
		popup = {
			[";"] = "LogPopup",
		},
	},
})

local map = vim.keymap.set

map("n", "<leader>gs", vim.cmd.Neogit)
