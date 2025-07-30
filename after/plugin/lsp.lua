local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<leader>lsr", "<cmd>LspRestart<cr>")

map("n", "<leader>lf", vim.cmd.Format)
map("n", "<leader>lF", vim.cmd.FormatWrite)

map("n", "gd", builtin.lsp_definitions)
map("n", "gr", builtin.lsp_references)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "gT", vim.lsp.buf.type_definition)

map("n", "<leader>lr", vim.lsp.buf.rename)
map("n", "<leader>ld", vim.diagnostic.open_float)
map("n", "<leader>lca", vim.lsp.buf.code_action)
map("n", "<leader>lds", builtin.lsp_document_symbols)

map("n", "<leader>lws", vim.lsp.buf.workspace_symbol)
map("n", "<leader>lR", vim.lsp.buf.references)
map("n", "<C-h>", vim.lsp.buf.signature_help)
map("i", "<C-h>", vim.lsp.buf.signature_help)
