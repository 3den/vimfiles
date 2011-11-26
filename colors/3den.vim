" Vim color scheme based on desert
"
" Name:         3den.vim
" Maintainer:   Marcelo Eden <spam@3den.org>
" Last Change:  Dec 2011
" License:      public domain
" Version:      0.1

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "3DEN"
runtime colors/desert.vim

hi LineNr guifg=#838B83

