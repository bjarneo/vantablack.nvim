# vantablack.nvim

A monochrome colorscheme for Neovim. No color. Just light and dark.

Vantablack uses a 7-tier luminance hierarchy on a near-black `#0d0d0d` background to create visual structure through brightness alone. Important code is light. Everything else fades.

## Design

```
T1  #505050  ░░░░░░░░░░                     gutter, line numbers
T2  #7a7a7a  ░░░░░░░░░░░░░░                 comments (WCAG AA)
T3  #888888  ░░░░░░░░░░░░░░░░               operators, brackets
T4  #9a9a9a  ░░░░░░░░░░░░░░░░░░             strings, numbers
T5  #b0b0b0  ░░░░░░░░░░░░░░░░░░░░░░         variables, properties
T6  #c8c8c8  ░░░░░░░░░░░░░░░░░░░░░░░░░░     keywords, types
T7  #e0e0e0  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░   functions, foreground
```

Bold is reserved for structural elements: functions, keywords, types. Comments are italic. Brackets fade. Your eyes land on what matters.

## Install

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "bjarneo/vantablack.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vantablack").setup()
    vim.cmd.colorscheme("vantablack")
  end,
}
```

## Configuration

```lua
require("vantablack").setup({
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  dim_inactive = false,

  -- Override palette colors
  on_colors = function(colors) end,

  -- Override specific highlight groups
  on_highlights = function(hl, colors) end,
})
```

## Plugin Support

Works out of the box with LazyVim and these plugins:

blink.cmp, bufferline.nvim, conform.nvim, diffview.nvim, flash.nvim, fidget.nvim, gitsigns.nvim, indent-blankline.nvim, lazy.nvim, mason.nvim, mini.nvim, neo-tree.nvim, noice.nvim, nvim-dap, nvim-lint, nvim-tree.lua, render-markdown.nvim, snacks.nvim, telescope.nvim, todo-comments.nvim, trouble.nvim, which-key.nvim

Plus full treesitter and LSP semantic token support.

## Lualine

The lualine theme loads automatically when you set the colorscheme.

## License

MIT
