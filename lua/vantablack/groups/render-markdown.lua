-- Render-markdown plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    RenderMarkdownH1Bg      = { bg = Util.blend_bg(c.red, 0.1), bold = true },
    RenderMarkdownH2Bg      = { bg = Util.blend_bg(c.orange, 0.1), bold = true },
    RenderMarkdownH3Bg      = { bg = Util.blend_bg(c.yellow, 0.1), bold = true },
    RenderMarkdownH4Bg      = { bg = Util.blend_bg(c.green, 0.1), bold = true },
    RenderMarkdownH5Bg      = { bg = Util.blend_bg(c.blue, 0.1), bold = true },
    RenderMarkdownH6Bg      = { bg = Util.blend_bg(c.purple, 0.1), bold = true },
    RenderMarkdownCode       = { bg = c.bg_highlight },
    RenderMarkdownCodeInline = { bg = c.subtle_bg, fg = c.blue },
    RenderMarkdownBullet     = { fg = c.blue },
    RenderMarkdownQuote      = { fg = c.comment, italic = true },
    RenderMarkdownDash       = { fg = c.border },
    RenderMarkdownLink       = { fg = c.teal, underline = true },
    RenderMarkdownMath       = { fg = c.orange },
    RenderMarkdownChecked    = { fg = c.green, strikethrough = true },
    RenderMarkdownUnchecked  = { fg = c.comment },
    RenderMarkdownTableHead  = { fg = c.blue, bold = true },
    RenderMarkdownTableRow   = { fg = c.blue5 },
  }
end

return M
