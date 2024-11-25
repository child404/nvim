-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		python = {
			require("formatter.filetypes.python").black,
			require("formatter.filetypes.python").isort,
			function()
				return {
					exe = "docformatter",
					args = { "--black", "-" },
					stdin = true,
				}
			end,
		},

		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},

		go = {
			require("formatter.filetypes.go").gofmt,
			require("formatter.filetypes.go").goimports,
		},

		c = {
			require("formatter.filetypes.c").clangformat,
		},

        markdown = {
            require("formatter.filetypes.markdown").prettier,
        },

        yaml = {
            require("formatter.filetypes.yaml").prettier,
        },

        json = {
            require("formatter.filetypes.json").prettier,
        },

        sh = {
            require("formatter.filetypes.sh").shfmt,
        },

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
