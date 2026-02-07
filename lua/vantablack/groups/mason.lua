-- Mason plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    MasonHeader                  = { fg = c.black, bg = c.blue, bold = true },
    MasonHeaderSecondary         = { fg = c.black, bg = c.purple, bold = true },
    MasonHighlight               = { fg = c.blue },
    MasonHighlightBlock          = { fg = c.black, bg = c.blue },
    MasonHighlightBlockBold      = { fg = c.black, bg = c.blue, bold = true },
    MasonHighlightSecondary      = { fg = c.purple },
    MasonHighlightBlockSecondary = { fg = c.black, bg = c.purple },
    MasonHighlightBlockBoldSecondary = { fg = c.black, bg = c.purple, bold = true },
    MasonMuted                   = { fg = c.comment },
    MasonMutedBlock              = { fg = c.fg, bg = c.bg_dark },
    MasonMutedBlockBold          = { fg = c.fg, bg = c.bg_dark, bold = true },
    MasonError                   = { fg = c.error },
    MasonWarning                 = { fg = c.warning },
    MasonHeading                 = { fg = c.blue, bold = true },
  }
end

return M
