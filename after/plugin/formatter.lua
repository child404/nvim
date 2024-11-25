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
			require("formatter.filetype.rust").rustfmt,
		},

		go = {
			require("formatter.filetype.go").gofmt,
			require("formatter.filetype.go").goimports,
		},

		c = {
			require("formatter.filetype.c").clangformat,
		},

        markdown = {
            require("formatter.filetype.markdown").prettier,
        },

        yaml = {
            require("formatter.filetype.yaml").prettier,
        },

        json = {
            require("formatter.filetype.json").prettier,
        },

        sh = {
            require("formatter.filetype.sh").shfmt,
        },

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
