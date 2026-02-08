-- Todo-comments plugin support for Vantablack colorscheme
local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TodoBgFIX      = { bg = c.error, fg = c.bg, bold = true },
    TodoBgHACK     = { bg = c.warning, fg = c.bg, bold = true },
    TodoBgNOTE     = { bg = c.hint, fg = c.bg, bold = true },
    TodoBgPERF     = { bg = c.purple, fg = c.bg, bold = true },
    TodoBgTODO     = { bg = c.todo, fg = c.bg, bold = true },
    TodoBgWARN     = { bg = c.warning, fg = c.bg, bold = true },
    TodoFgFIX      = { fg = c.error },
    TodoFgHACK     = { fg = c.warning },
    TodoFgNOTE     = { fg = c.hint },
    TodoFgPERF     = { fg = c.purple },
    TodoFgTODO     = { fg = c.todo },
    TodoFgWARN     = { fg = c.warning },
    TodoSignFIX    = { fg = c.error },
    TodoSignHACK   = { fg = c.warning },
    TodoSignNOTE   = { fg = c.hint },
    TodoSignPERF   = { fg = c.purple },
    TodoSignTODO   = { fg = c.todo },
    TodoSignWARN   = { fg = c.warning },
  }
end

return M
