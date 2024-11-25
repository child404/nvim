local map = vim.keymap.set
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>a", function()
	harpoon:list():add()
end)
map("n", "<C-eh>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<C-j>", function()
	harpoon:list():select(1)
end)
map("n", "<C-k>", function()
	harpoon:list():select(2)
end)
map("n", "<C-l>", function()
	harpoon:list():select(3)
end)
map("n", "<C-i>", function()
	harpoon:list():select(4)
end)

map("n", "<M-l>", function()
	harpoon:list():prev()
end)
map("n", "<M-k>", function()
	harpoon:list():next()
end)
