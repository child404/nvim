function GitStatus()
  return vim.b.gitsigns_status or ""
end

function GitBranch()
  return vim.b.gitsigns_head or ""
end

vim.o.statusline = "%f %m %r %=%{v:lua.GitBranch()} %=%{v:lua.GitStatus()} %y %p%%"
