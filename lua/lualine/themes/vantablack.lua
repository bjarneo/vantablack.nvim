-- Lualine theme for Vantablack colorscheme
local colors = require("vantablack.colorscheme")

local M = {}

M.normal = {
  a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
  b = { bg = colors.bg_dark, fg = colors.yellow },
  c = { bg = colors.bg, fg = colors.fg },
  x = { bg = colors.bg, fg = colors.fg },
}

M.insert = {
  a = { bg = colors.green, fg = colors.bg, gui = "bold" },
  b = { bg = colors.bg_dark, fg = colors.green },
}

M.command = {
  a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
  b = { bg = colors.bg_dark, fg = colors.orange },
}

M.visual = {
  a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
  b = { bg = colors.bg_dark, fg = colors.purple },
}

M.replace = {
  a = { bg = colors.red, fg = colors.bg, gui = "bold" },
  b = { bg = colors.bg_dark, fg = colors.red },
}

M.inactive = {
  a = { bg = colors.bg_dark, fg = colors.comment },
  b = { bg = colors.bg, fg = colors.comment },
}

return M
