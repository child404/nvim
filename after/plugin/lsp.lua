local map = vim.keymap.set

map("n", "<leader>lr", "<cmd>LspRestart<cr>")
map("n", "<leader>f", vim.cmd.Format)
map("n", "<leader>F", vim.cmd.FormatWrite)
map("n", "gd", vim.lsp.buf.definition)
map("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
map("n", "<leader>vd", vim.diagnostic.open_float)
map("n", "<leader>vca", vim.lsp.buf.code_action)
map("n", "<leader>vrr", vim.lsp.buf.references)
map("n", "<leader>vrn", vim.lsp.buf.rename)
map("n", "<C-h>", vim.lsp.buf.signature_help)
