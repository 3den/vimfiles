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
runtime colors/desert.vim
let g:colors_name = "3DEN"

" Customizations
hi Normal ctermbg=black guibg=black
hi NonText guifg=#8f8f8f ctermfg=8 ctermbg=black guibg=black
hi LineNr gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi Comment gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi PreProc guifg=#94c7fb ctermfg=117
hi Type guifg=#C1E083

" hi Special guifg=#ffadad ctermfg=117
hi vimCommentTitle guifg=#5faf5f ctermfg=71

" Ruby Stuff
hi link RubyControl Statement
