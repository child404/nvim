local map = vim.keymap.set
local barbecue_ui = require("barbecue.ui")

require("barbecue").setup({
	create_autocmd = false, -- prevent barbecue from updating itself automatically
	exclude_filetypes = {
		"netrw",
		"toggleterm",
		"NeogitCommitMessage",
		"NeogitCommitView",
		"NeogitDiffView",
		"NeogitHelpPopup",
		"NeogitLogPopup",
		-- ...bunch more Neogit buffers
	},
	theme = {
		separator = { fg = "#737aa2" },
		dirname = { fg = "#737aa2" },
	},
})

vim.api.nvim_create_autocmd({
	"WinResized",
	"BufWinEnter",
	"CursorHold",
	"InsertLeave",
	-- include this if you have set `show_modified` to `true`
	-- "BufModifiedSet",
}, {
	group = vim.api.nvim_create_augroup("barbecue.updater", {}),
	callback = function()
		require("barbecue.ui").update()
	end,
})

map("n", "<leader>wt", barbecue_ui.toggle)
map("n", "<leader>wh", function()
	barbecue_ui.navigate(1)
end)
map("n", "<leader>wj", function()
	barbecue_ui.navigate(2)
end)
map("n", "<leader>wk", function()
	barbecue_ui.navigate(3)
end)
map("n", "<leader>wl", function()
	barbecue_ui.navigate(4)
end)
map("n", "<leader>w;", function()
	barbecue_ui.navigate(5)
end)
map("n", "<leader>w'", function()
	barbecue_ui.navigate(-1)
end)
