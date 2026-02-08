-- Snacks plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksNormal           = { bg = c.bg_float, fg = c.fg },
    SnacksWinBar           = { bg = c.bg_float, fg = c.fg },
    SnacksBackdrop         = { bg = c.bg_dark },
    SnacksNormalNC         = { bg = c.bg_float, fg = c.fg },
    SnacksWinBarNC         = { bg = c.bg_float, fg = c.fg_dark },
    SnacksNotifierInfo     = { fg = c.info },
    SnacksNotifierWarn     = { fg = c.warning },
    SnacksNotifierError    = { fg = c.error },
    SnacksNotifierDebug    = { fg = c.comment },
    SnacksNotifierTrace    = { fg = c.purple },
    SnacksNotifierIconInfo = { fg = c.info },
    SnacksNotifierIconWarn = { fg = c.warning },
    SnacksNotifierIconError = { fg = c.error },
    SnacksNotifierIconDebug = { fg = c.comment },
    SnacksNotifierIconTrace = { fg = c.purple },
    SnacksNotifierTitleInfo = { fg = c.info, bold = true },
    SnacksNotifierTitleWarn = { fg = c.warning, bold = true },
    SnacksNotifierTitleError = { fg = c.error, bold = true },
    SnacksNotifierTitleDebug = { fg = c.comment, bold = true },
    SnacksNotifierTitleTrace = { fg = c.purple, bold = true },
    SnacksNotifierBorderInfo = { fg = c.info },
    SnacksNotifierBorderWarn = { fg = c.warning },
    SnacksNotifierBorderError = { fg = c.error },
    SnacksNotifierBorderDebug = { fg = c.comment },
    SnacksNotifierBorderTrace = { fg = c.purple },

    -- Dashboard
    SnacksDashboardNormal     = { bg = c.bg, fg = c.fg },
    SnacksDashboardDesc       = { fg = c.comment },
    SnacksDashboardFile       = { fg = c.fg },
    SnacksDashboardDir        = { fg = c.comment },
    SnacksDashboardFooter     = { fg = c.comment },
    SnacksDashboardHeader     = { fg = c.blue, bold = true },
    SnacksDashboardIcon       = { fg = c.blue },
    SnacksDashboardKey        = { fg = c.yellow, bold = true },
    SnacksDashboardTerminal   = { bg = c.bg },
    SnacksDashboardSpecial    = { fg = c.cyan },
    SnacksDashboardTitle      = { fg = c.blue, bold = true },

    -- Picker
    SnacksPickerNormal        = { bg = c.bg_float, fg = c.fg },
    SnacksPickerBorder        = { fg = c.border_highlight, bg = c.bg_float },
    SnacksPickerTitle         = { fg = c.blue, bold = true },
    SnacksPickerCursorLine    = { bg = c.bg_highlight },
    SnacksPickerMatch         = { fg = c.cyan, bold = true },
    SnacksPickerSelected      = { fg = c.fg, bold = true },
    SnacksPickerToggle        = { fg = c.blue, bold = true },
    SnacksPickerDir           = { fg = c.comment },
    SnacksPickerFile          = { fg = c.fg },
    SnacksPickerGitAdded      = { fg = c.git.add },
    SnacksPickerGitDeleted    = { fg = c.git.delete },
    SnacksPickerGitModified   = { fg = c.git.change },
    SnacksPickerSearch        = { fg = c.cyan },
    SnacksPickerInputNormal   = { bg = c.bg_popup, fg = c.fg },
    SnacksPickerInputBorder   = { fg = c.border_highlight, bg = c.bg_popup },
    SnacksPickerInputTitle    = { fg = c.blue, bold = true },
    SnacksPickerListNormal    = { bg = c.bg_float, fg = c.fg },
    SnacksPickerListBorder    = { fg = c.border_highlight, bg = c.bg_float },
    SnacksPickerListTitle     = { fg = c.blue, bold = true },
    SnacksPickerListCursorLine = { bg = c.bg_highlight },
    SnacksPickerPreviewNormal = { bg = c.bg_float, fg = c.fg },
    SnacksPickerPreviewBorder = { fg = c.border_highlight, bg = c.bg_float },
    SnacksPickerPreviewTitle  = { fg = c.blue, bold = true },

    -- Indent
    SnacksIndent              = { fg = c.fg_gutter },
    SnacksIndentScope         = { fg = c.comment },
    SnacksIndentChunk         = { fg = c.comment },

    -- Input
    SnacksInputNormal         = { bg = c.bg_float, fg = c.fg },
    SnacksInputBorder         = { fg = c.border_highlight, bg = c.bg_float },
    SnacksInputTitle          = { fg = c.blue, bold = true },
  }
end

return M
