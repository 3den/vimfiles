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
hi LineNr gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi Comment gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi NonText guifg=#8f8f8f ctermfg=8
hi Constant guifg=#d0fb94 ctermfg=192
hi PreProc guifg=#94c7fb ctermfg=117
hi vimCommentTitle guifg=#5faf5f ctermfg=71

