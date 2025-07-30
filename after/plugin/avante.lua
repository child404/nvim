local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local function avante_multi_select()
	pickers
		.new({}, {
			prompt_title = "Select Files for Avante",
			finder = finders.new_oneshot_job({ "git", "ls-files" }),
			sorter = conf.generic_sorter({}),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					local picker = action_state.get_current_picker(prompt_bufnr)
					local selections = picker:get_multi_selection()
					actions.close(prompt_bufnr)
					local files = {}
					for _, entry in ipairs(selections) do
						table.insert(files, entry.value)
					end
					local query = vim.fn.input("Avante Query: ")
					vim.cmd(":AvanteAsk " .. query .. " [" .. table.concat(files, ", ") .. "]")
				end)
				return true
			end,
		})
		:find()
end

vim.api.nvim_set_keymap("n", "<leader>af", "<cmd>lua avante_multi_select()<CR>", { noremap = true, silent = true })
