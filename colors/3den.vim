" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/631051/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla631051"

if version >= 700
  hi CursorLine     guibg=#060A02 ctermbg=232
  hi CursorColumn   guibg=#060A02 ctermbg=232
  hi MatchParen     guifg=#AFFF6B guibg=#060A02 gui=bold ctermfg=155 ctermbg=232 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#B21A1A ctermfg=255 ctermbg=124
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#060A02 gui=none ctermfg=255 ctermbg=232 cterm=none
hi NonText          guifg=#FFFFFF guibg=#151911 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#353931 guibg=#1F231B gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#280D06 gui=italic ctermfg=255 ctermbg=232 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#2E322A gui=none ctermfg=255 ctermbg=236 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#1F231B gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#060A02 gui=none ctermfg=255 ctermbg=232 cterm=none
hi Title            guifg=#B21A1A guibg=NONE	gui=bold ctermfg=124 ctermbg=NONE cterm=bold
hi Visual           guifg=#45FF00 guibg=#323232 gui=none ctermfg=82 ctermbg=236 cterm=none
hi SpecialKey       guifg=#C38200 guibg=#151911 gui=none ctermfg=136 ctermbg=233 cterm=none
"hi DiffChange       guibg=#505301 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#292C4D gui=none ctermbg=236 cterm=none
"hi DiffText         guibg=#693867 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#440701 gui=none ctermbg=52 cterm=none

hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#45FF00 gui=bold ctermfg=82 cterm=bold


" Syntax highlighting
hi Comment guifg=#353931 gui=none ctermfg=236 cterm=none
hi Constant guifg=#C38200 gui=none ctermfg=136 cterm=none
hi Number guifg=#C38200 gui=none ctermfg=136 cterm=none
hi Identifier guifg=#3A5E52 gui=none ctermfg=239 cterm=none
hi Statement guifg=#AFFF6B gui=none ctermfg=155 cterm=none
hi Function guifg=#0CFF0C gui=none ctermfg=46 cterm=none
hi Special guifg=#313784 gui=none ctermfg=237 cterm=none
hi PreProc guifg=#313784 gui=none ctermfg=237 cterm=none
hi Keyword guifg=#AFFF6B gui=none ctermfg=155 cterm=none
hi String guifg=#45FF00 gui=none ctermfg=82 cterm=none
hi Type guifg=#57C843 gui=none ctermfg=77 cterm=none
hi pythonBuiltin guifg=#3A5E52 gui=none ctermfg=239 cterm=none
hi TabLineFill guifg=#1F6C01 gui=none ctermfg=22 cterm=none

