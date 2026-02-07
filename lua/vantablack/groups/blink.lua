-- Blink plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    BlinkCmpMenu              = { bg = c.bg_popup, fg = c.fg },
    BlinkCmpMenuBorder        = { bg = c.bg_popup, fg = c.border_highlight },
    BlinkCmpMenuSelection     = { bg = Util.blend_bg(c.fg_gutter, 0.8) },
    BlinkCmpLabel             = { fg = c.fg },
    BlinkCmpLabelDeprecated   = { fg = c.fg_gutter, strikethrough = true },
    BlinkCmpLabelMatch        = { fg = c.blue1, bold = true },
    BlinkCmpLabelDescription  = { fg = c.fg_dark },
    BlinkCmpLabelDetail       = { fg = c.comment },
    BlinkCmpKind              = { fg = c.purple },
    BlinkCmpKindClass         = { fg = c.yellow },
    BlinkCmpKindColor         = { fg = c.cyan },
    BlinkCmpKindConstant      = { fg = c.orange },
    BlinkCmpKindConstructor   = { fg = c.blue },
    BlinkCmpKindEnum          = { fg = c.yellow },
    BlinkCmpKindEnumMember    = { fg = c.teal },
    BlinkCmpKindEvent         = { fg = c.purple },
    BlinkCmpKindField         = { fg = c.teal },
    BlinkCmpKindFile          = { fg = c.fg },
    BlinkCmpKindFolder        = { fg = c.blue },
    BlinkCmpKindFunction      = { fg = c.red },
    BlinkCmpKindInterface     = { fg = c.yellow },
    BlinkCmpKindKeyword       = { fg = c.purple },
    BlinkCmpKindMethod        = { fg = c.red },
    BlinkCmpKindModule        = { fg = c.blue },
    BlinkCmpKindOperator      = { fg = c.cyan },
    BlinkCmpKindProperty      = { fg = c.teal },
    BlinkCmpKindReference     = { fg = c.orange },
    BlinkCmpKindSnippet       = { fg = c.green },
    BlinkCmpKindStruct        = { fg = c.yellow },
    BlinkCmpKindText          = { fg = c.fg },
    BlinkCmpKindTypeParameter = { fg = c.yellow },
    BlinkCmpKindUnit          = { fg = c.orange },
    BlinkCmpKindValue         = { fg = c.orange },
    BlinkCmpKindVariable      = { fg = c.fg },
    BlinkCmpDoc               = { bg = c.bg_float, fg = c.fg },
    BlinkCmpDocBorder         = { bg = c.bg_float, fg = c.border_highlight },
    BlinkCmpSignatureHelp     = { bg = c.bg_float, fg = c.fg },
    BlinkCmpSignatureHelpBorder = { bg = c.bg_float, fg = c.border_highlight },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.blue, bold = true },
  }
end

return M
