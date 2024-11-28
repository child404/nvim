local opt = vim.opt

local options = {
	number = true, -- show line numbers
	relativenumber = true, -- show relative line numbers

	tabstop = 4, -- 4 spaces for a tab
	softtabstop = 4, -- same as the next ???
	shiftwidth = 4, -- num of spaces for each indent
	expandtab = true, -- tabs to spaces

	smartindent = true, -- make indenting smarter again

	wrap = false, -- display lines as one long line

	swapfile = false, -- no swap file
	backup = false, -- no backup
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,

	hlsearch = false, -- highlight matched text
	incsearch = true, -- increment search
	ignorecase = true, -- ignore case in search
	smartcase = true, -- ingore previous if uppercase in search
	inccommand = "split",

	termguicolors = true, -- enable terminal colors

	scrolloff = 8, -- when to stop scrolling (lines before the bottom)
	sidescrolloff = 8,
	signcolumn = "yes", -- column on the left side

	updatetime = 50,

	splitright = true, -- vsplit window opens at the right
	splitbelow = true, -- hsplit window opens at the bottom

	mouse = "a", -- enable mouse everywhere

    clipboard = "unnamedplus",
}

opt.isfname:append("@-@")

for k, v in pairs(options) do
	opt[k] = v
end
