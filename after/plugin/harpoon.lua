local map = vim.keymap.set
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>a", function()
	harpoon:list():add()
end)
map("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<M-j>", function()
	harpoon:list():select(1)
end)
map("n", "<M-k>", function()
	harpoon:list():select(2)
end)
map("n", "<M-l>", function()
	harpoon:list():select(3)
end)
map("n", "<M-;>", function()
	harpoon:list():select(4)
end)

map("n", "<C-S-L>", function()
	harpoon:list():prev()
end)
map("n", "<C-S-K>", function()
	harpoon:list():next()
end)
