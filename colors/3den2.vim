" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/651571/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla651571"

if version >= 700
  hi CursorLine     guibg=#000009 ctermbg=16
  hi CursorColumn   guibg=#000009 ctermbg=16
  hi MatchParen     guifg=#CBFF4B guibg=#000009 gui=bold ctermfg=191 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#A6FF3B ctermfg=255 ctermbg=155
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000009 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F18 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303038 guibg=#191922 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#213313 gui=italic ctermfg=255 ctermbg=234 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#282831 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#191922 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000009 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#A6FF3B guibg=NONE	gui=bold ctermfg=155 ctermbg=NONE cterm=bold
hi Visual           guifg=#00EA6C guibg=#323232 gui=none ctermfg=41 ctermbg=236 cterm=none
hi SpecialKey       guifg=#59FC75 guibg=#0F0F18 gui=none ctermfg=84 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C06 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#252552 gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#66326B gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0006 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#00EA6C gui=bold ctermfg=41 cterm=bold


" Syntax highlighting
hi Comment guifg=#A6FF3B gui=none ctermfg=155 cterm=none
hi Constant guifg=#59FC75 gui=none ctermfg=84 cterm=none
hi Number guifg=#59FC75 gui=none ctermfg=84 cterm=none
hi Identifier guifg=#61B5FF gui=none ctermfg=75 cterm=none
hi Statement guifg=#CBFF4B gui=none ctermfg=191 cterm=none
hi Function guifg=#37D93D gui=none ctermfg=77 cterm=none
hi Special guifg=#5FFF09 gui=none ctermfg=82 cterm=none
hi PreProc guifg=#5FFF09 gui=none ctermfg=82 cterm=none
hi Keyword guifg=#CBFF4B gui=none ctermfg=191 cterm=none
hi String guifg=#00EA6C gui=none ctermfg=41 cterm=none
hi Type guifg=#26FE8F gui=none ctermfg=48 cterm=none
hi pythonBuiltin guifg=#61B5FF gui=none ctermfg=75 cterm=none
hi TabLineFill guifg=#005D30 gui=none ctermfg=23 cterm=none
