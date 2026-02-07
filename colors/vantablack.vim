" Vantablack colorscheme for Vim/Neovim
" Maintainer: Bjarne Øverli
" License: MIT

" Neovim-only Lua colorscheme
if !has('nvim')
  echohl ErrorMsg
  echom "vantablack.nvim requires Neovim"
  echohl None
  finish
endif

lua require('vantablack').load()
