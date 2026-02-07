-- Comment plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    CommentNormal = { fg = c.comment, style = opts.styles.comments },
    CommentBold   = { fg = c.comment, bold = true },
    CommentItalic = { fg = c.comment, italic = true },
    CommentURL    = { fg = c.blue, underline = true },
  }
end

return M
