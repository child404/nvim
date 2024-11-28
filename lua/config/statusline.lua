function MyMode()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    c = "COMMAND",
    t = "TERMINAL",
    s = "SELECT",
  }
  return modes[vim.api.nvim_get_mode().mode] or "UNKNOWN"
end

function GitStatus()
  return vim.b.gitsigns_status or ""
end

function GitBranch()
  return vim.b.gitsigns_head or ""
end

vim.o.statusline = "[%{v:lua.MyMode()}] %{v:lua.GitBranch()} %= %f %m %r %= %{v:lua.GitStatus()} %y[%l:%c]"
