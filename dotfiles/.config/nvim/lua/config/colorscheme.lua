-- vim.cmd.colorscheme("quiet")
-- colorscheme
local M = {}

function M.set_hl()
   vim.api.nvim_set_hl(0, "Normal", { fg = "#f1e5c9", bg = "#14161B" })
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#14161b" })
   vim.api.nvim_set_hl(0, "Special", { fg = "#fabd2f" })
   vim.api.nvim_set_hl(0, "Delimiter", { fg = "#fe8019" })
   --
   -- --cpp-stuff
   vim.api.nvim_set_hl(0, "@punctuation.bracket.cpp", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "@punctuation.delimiter.cpp", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "@Keyword.repeat.cpp", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.return.cpp", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.conditional.cpp", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.type.cpp", { link = "Structure" })
   --
   -- c stuff
   vim.api.nvim_set_hl(0, "@punctuation.bracket.c", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "@punctuation.delimiter.c", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "@Keyword.repeat.c", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.return.c", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.conditional.c", { link = "Statement" })
   vim.api.nvim_set_hl(0, "@Keyword.type.c", { link = "Structure" })
   --
   vim.api.nvim_set_hl(0, "Statement", { fg = "#d99de3" })
   vim.api.nvim_set_hl(0, "Function", { fg = "#83a598", bold = true })
   vim.api.nvim_set_hl(0, "Number", { fg = "#d3869b" })
   vim.api.nvim_set_hl(0, "Constant", { fg = "#d3869b" })
   vim.api.nvim_set_hl(0, "Boolean", { fg = "#d3869b" })
   vim.api.nvim_set_hl(0, "Float", { fg = "#d3869b" })
   vim.api.nvim_set_hl(0, "Visual", { fg = "#242424", bg = "#83a598" })
   vim.api.nvim_set_hl(0, "Keyword", { fg = "#c42248" })
   vim.api.nvim_set_hl(0, "PreProc", { fg = "#fb4934" })
   vim.api.nvim_set_hl(0, "Operator", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "Structure", { fg = "#8ec07c" })
   vim.api.nvim_set_hl(0, "String", { fg = "#98bb26" })
   -- vim.api.nvim_set_hl(0, "Type", { fg = "#8ec07c" })
   vim.api.nvim_set_hl(0, "Type", { fg = "#fabd2f" })
   vim.api.nvim_set_hl(0, "@variable", { fg = "#f1e5c9" })
   vim.api.nvim_set_hl(0, "Tabline", { bg = "#3c3836" })
   vim.api.nvim_set_hl(0, "Title", { fg = "#b8bb26" })
   vim.api.nvim_set_hl(0, "Comment", { fg = "#928374" })
   vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#242424", bg = "#83a598" })
   vim.api.nvim_set_hl(0, "Pmenu", { bg = "#14161b" })
   vim.api.nvim_set_hl(0, "Identifier", { fg = "#99b7cf" })
   --
   vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#fb4934", bg = "#14161b" })
   vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#fabd2f", bg = "#14161b" })
   -- winbar stuff
   vim.api.nvim_set_hl(0, "Winbar", { fg = "#f1e5c9", bg = "#14161b" })
   vim.api.nvim_set_hl(0, "WinbarNC", { fg = "#f1e5c9", bg = "#14161b" })
   vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#14161b", bg = "#14161b" })
   vim.api.nvim_set_hl(0, "StatusLine", { fg = "#14161b", bg = "#14161b" })
end

return M
