-- Noice plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NoiceCompletionItemKindDefault  = { fg = c.fg_dark },
    NoiceCompletionItemKindKeyword  = { fg = c.purple },
    NoiceCompletionItemKindVariable = { fg = c.fg },
    NoiceCompletionItemKindConstant = { fg = c.orange },
    NoiceCompletionItemKindReference = { fg = c.orange },
    NoiceCompletionItemKindValue    = { fg = c.orange },
    NoiceCompletionItemKindFunction = { fg = c.red },
    NoiceCompletionItemKindMethod   = { fg = c.red },
    NoiceCompletionItemKindConstructor = { fg = c.blue },
    NoiceCompletionItemKindClass    = { fg = c.yellow },
    NoiceCompletionItemKindInterface = { fg = c.yellow },
    NoiceCompletionItemKindStruct   = { fg = c.yellow },
    NoiceCompletionItemKindEvent    = { fg = c.purple },
    NoiceCompletionItemKindEnum     = { fg = c.yellow },
    NoiceCompletionItemKindUnit     = { fg = c.orange },
    NoiceCompletionItemKindModule   = { fg = c.blue },
    NoiceCompletionItemKindProperty = { fg = c.teal },
    NoiceCompletionItemKindField    = { fg = c.teal },
    NoiceCompletionItemKindTypeParameter = { fg = c.yellow },
    NoiceCompletionItemKindEnumMember = { fg = c.teal },
    NoiceCompletionItemKindOperator = { fg = c.cyan },
    NoiceCompletionItemKindSnippet  = { fg = c.green },
    NoiceCmdline                    = { bg = c.bg_popup },
    NoiceCmdlineIcon                = { fg = c.blue },
    NoiceCmdlineIconSearch          = { fg = c.yellow },
    NoiceCmdlinePopup               = { bg = c.bg_popup },
    NoiceCmdlinePopupBorder         = { fg = c.border_highlight, bg = c.bg_popup },
    NoiceCmdlinePopupBorderSearch   = { fg = c.border_highlight, bg = c.bg_popup },
    NoiceConfirm                    = { bg = c.bg_popup },
    NoiceConfirmBorder              = { fg = c.border_highlight, bg = c.bg_popup },
  }
end

return M
