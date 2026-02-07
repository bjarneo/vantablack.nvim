-- Lsp plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Diagnostics
    DiagnosticError                  = { fg = c.error },
    DiagnosticWarn                   = { fg = c.warning },
    DiagnosticInfo                   = { fg = c.info },
    DiagnosticHint                   = { fg = c.hint },
    DiagnosticVirtualTextError       = { fg = c.error, bg = Util.blend_bg(c.error, 0.1) },
    DiagnosticVirtualTextWarn        = { fg = c.warning, bg = Util.blend_bg(c.warning, 0.1) },
    DiagnosticVirtualTextInfo        = { fg = c.info, bg = Util.blend_bg(c.info, 0.1) },
    DiagnosticVirtualTextHint        = { fg = c.hint, bg = Util.blend_bg(c.hint, 0.1) },
    DiagnosticUnderlineError         = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn          = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo          = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint          = { undercurl = true, sp = c.hint },

    -- LSP Semantic Tokens
    ["@lsp.type.class"]              = { link = "Structure" },
    ["@lsp.type.decorator"]          = { link = "Function" },
    ["@lsp.type.enum"]               = { link = "Type" },
    ["@lsp.type.enumMember"]         = { link = "Constant" },
    ["@lsp.type.function"]           = { link = "Function" },
    ["@lsp.type.interface"]          = { link = "Structure" },
    ["@lsp.type.macro"]              = { link = "Macro" },
    ["@lsp.type.method"]             = { link = "Function" },
    ["@lsp.type.namespace"]          = { link = "Include" },
    ["@lsp.type.parameter"]          = { link = "Identifier" },
    ["@lsp.type.property"]           = { link = "Identifier" },
    ["@lsp.type.struct"]             = { link = "Structure" },
    ["@lsp.type.type"]               = { link = "Type" },
    ["@lsp.type.typeParameter"]      = { link = "TypeDef" },
    ["@lsp.type.variable"]           = { link = "Identifier" },

    -- LSP References and Definitions
    LspReferenceText                 = { bg = c.bg_highlight },
    LspReferenceRead                 = { bg = c.bg_highlight },
    LspReferenceWrite                = { bg = c.bg_highlight, bold = true },
    LspSignatureActiveParameter      = { fg = c.orange, bold = true },
    LspCodeLens                      = { fg = c.comment },
    LspInlayHint                     = { fg = c.comment, bg = Util.blend_bg(c.comment, 0.1) },
  }
end

return M
