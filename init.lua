local M = {}

local colors = {
  bg = '#36454F',
  fg = '#ececef',
  red = '#e5484d',
  gold = '#f5b73d',
  pink = '#f4a6b0',
  orange = '#f97316',
  dark_red = '#8B0000',
}
--comment--
function M.colorscheme()
  vim.cmd 'highlight clear'
  vim.cmd 'syntax reset'

  vim.o.background = 'dark'
  vim.g.color_name = 'custom_color_scheme'

  local set = vim.api.nvim_set_hl
  set(0, 'Normal', { bg = colors.bg, fg = colors.red })

  set(0, 'String', { fg = colors.orange })
  set(0, 'CursorLine', { fg = colors.fg })
  set(0, 'Statement', { fg = colors.red })
  set(0, 'Identifier', { fg = colors.gold })
  set(0, 'Function', { fg = colors.gold })
  set(0, 'Error', { fg = colors.dark_red })
  set(0, 'Comment', { fg = colors.pink, italic = true })
end

return M
