-- Telescope plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeSelection        = { fg = c.fg, bg = c.bg_highlight },
    TelescopeSelectionCaret   = { fg = c.fg, bg = c.bg_highlight },
    TelescopeMultiSelection   = { fg = c.fg, bg = c.bg_highlight },
    TelescopeNormal           = "NormalFloat",
    TelescopeBorder           = "FloatBorder",
    TelescopeMatching         = { fg = c.cyan, bold = true },

    TelescopePromptNormal     = { bg = c.bg_popup },
    TelescopePromptBorder     = { fg = c.border_highlight, bg = c.bg_popup },
    TelescopePromptTitle      = { fg = c.blue, bold = true },
    TelescopePromptPrefix     = { fg = c.fg },

    TelescopePreviewNormal    = "NormalFloat",
    TelescopePreviewBorder    = "FloatBorder",
    TelescopePreviewTitle     = { fg = c.blue, bold = true },
    TelescopePreviewLine      = { bg = c.bg_highlight },
    TelescopePreviewMatch     = { fg = c.cyan, bg = c.bg_highlight },

    TelescopeResultsNormal    = "NormalFloat",
    TelescopeResultsBorder    = "FloatBorder",
    TelescopeResultsTitle     = { fg = c.red, bold = true },

    TelescopeResultsDirectory = { fg = c.blue, bold = true },
  }
end

return M
