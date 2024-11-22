local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep: ") });
end, { desc = "Telescope help tags" })
map("n", "<leader>gf", builtin.git_files, {})
map("n", "<leader>ht", builtin.help_tags, { desc = "Telescope help tags" })
