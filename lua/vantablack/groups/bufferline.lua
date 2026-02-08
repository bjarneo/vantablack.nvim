-- Bufferline plugin support for Vantablack colorscheme
local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected   = { fg = c.blue },
    BufferLineFill                = { bg = c.black },
    BufferLineBufferSelected      = { fg = c.fg, bold = true },
    BufferLineBuffer              = { fg = c.comment },
    BufferLineModified            = { fg = c.yellow },
    BufferLineModifiedSelected    = { fg = c.yellow },
    BufferLineSeparator           = { fg = c.black },
    BufferLineTab                 = { fg = c.comment, bg = c.bg },
    BufferLineTabSelected         = { fg = c.blue, bg = c.bg, bold = true },
    BufferLineTabClose            = { fg = c.red },
    BufferLineDiagnostic          = { fg = c.comment },
    BufferLineDiagnosticVisible   = { fg = c.comment },
    BufferLineError               = { fg = c.error },
    BufferLineWarning             = { fg = c.warning },
    BufferLineInfo                = { fg = c.info },
    BufferLineHint                = { fg = c.hint },
  }
end

return M
