-- Lazy.nvim plugin support for Vantablack colorscheme
local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyButton                = { bg = c.bg_highlight, fg = c.fg },
    LazyButtonActive          = { bg = c.blue, fg = c.bg, bold = true },
    LazyComment               = { fg = c.comment },
    LazyCommit                = { fg = c.comment },
    LazyCommitIssue           = { fg = c.blue },
    LazyCommitScope           = { fg = c.purple, italic = true },
    LazyCommitType            = { fg = c.blue, bold = true },
    LazyDimmed                = { fg = c.comment },
    LazyDir                   = { fg = c.blue },
    LazyH1                    = { fg = c.blue, bold = true },
    LazyH2                    = { fg = c.blue },
    LazyNormal                = { fg = c.fg, bg = c.bg_float },
    LazyOperator              = { fg = c.blue5 },
    LazyProp                  = { fg = c.green1 },
    LazyReasonCmd             = { fg = c.comment },
    LazyReasonEvent           = { fg = c.comment },
    LazyReasonFt              = { fg = c.comment },
    LazyReasonImport          = { fg = c.comment },
    LazyReasonKeys            = { fg = c.comment },
    LazyReasonPlugin          = { fg = c.comment },
    LazyReasonRequire         = { fg = c.comment },
    LazyReasonRuntime         = { fg = c.comment },
    LazyReasonSource          = { fg = c.comment },
    LazyReasonStart           = { fg = c.comment },
    LazySpecial               = { fg = c.cyan },
    LazyProgressDone          = { fg = c.blue },
    LazyProgressTodo          = { fg = c.fg_gutter },
    LazyTaskError             = { fg = c.error },
    LazyTaskOutput            = { fg = c.fg },
    LazyUrl                   = { fg = c.blue, underline = true },
    LazyValue                 = { fg = c.green },
  }
end

return M
