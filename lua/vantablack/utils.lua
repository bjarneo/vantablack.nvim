--- Utility functions for the Vantablack colorscheme
local M = {}

M.bg = "#000000"
M.fg = "#d8d8d8"

---@param c  string
local function rgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, alpha, background)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = rgb(background)
  local fg = rgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.blend_bg(hex, amount, bg)
  return M.blend(hex, amount, bg or M.bg)
end
M.darken = M.blend_bg

function M.blend_fg(hex, amount, fg)
  return M.blend(hex, amount, fg or M.fg)
end
M.lighten = M.blend_fg

---@param groups vantablack.Highlights
---@return table<string, vim.api.keyset.highlight>
function M.resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return groups
end

--- Helper function to set highlight groups with color values
--- This function builds a vim highlight command string and executes it
--- @param group string The highlight group name to set
--- @param opts table Table containing highlight options:
---   - fg: string Foreground color (hex color value)
---   - bg: string Background color (hex color value)
---   - sp: string Special color for underlines/undercurls (hex color value)
---   - style: string Style attributes (bold, italic, underline, etc.)
---   - blend: number Transparency level (0-100, where 0 is opaque and 100 is fully transparent)
function M.hi(group, opts)
  -- Start building the highlight command string
  local cmd = "highlight " .. group

  -- Add GUI foreground color if specified
  if opts.fg then
    cmd = cmd .. " guifg=" .. opts.fg
  end

  -- Add GUI background color if specified
  if opts.bg then
    cmd = cmd .. " guibg=" .. opts.bg
  end

  -- Add special color for underlines if specified
  if opts.sp then
    cmd = cmd .. " guisp=" .. opts.sp
  end

  -- Add style attributes (bold, italic, etc.) if specified
  if opts.style then
    cmd = cmd .. " gui=" .. opts.style
  end

  -- Add blend/transparency if specified
  if opts.blend then
    cmd = cmd .. " blend=" .. opts.blend
  end

  -- Execute the highlight command
  vim.cmd(cmd)
end

return M
