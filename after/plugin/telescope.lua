require("telescope").setup({
	extensions = {
		wrap_results = true,

		fzf = {},
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<leader>fd", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fs", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fS", require "config.telescope.multi-ripgrep")
map("n", "<leader>fg", function()
	builtin.grep_string({ search = vim.fn.input("Grep: ") })
end, { desc = "Telescope grep string" })
map("n", "<leader>gf", builtin.git_files, {})
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>/", builtin.current_buffer_fuzzy_find)
