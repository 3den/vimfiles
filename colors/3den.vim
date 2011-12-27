" Vim color scheme based on desert
"
" Name:         3den.vim
" Maintainer:   Marcelo Eden <spam@3den.org>
" Last Change:  Dec 2011
" License:      public domain
" Version:      0.1

hi clear
runtime colors/desert.vim
let g:colors_name = "3DEN"

" Customizations
hi LineNr gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi Comment gui=NONE guifg=#8f8f8f guibg=bg cterm=NONE ctermfg=8 ctermbg=NONE
hi NonText guifg=#8f8f8f ctermfg=8

" hi Cursor        term=reverse      ctermfg=green ctermbg=blue                      guifg=#000000 guibg=#559955
" hi CursorIM      term=reverse      ctermfg=black ctermbg=darkgreen                 guifg=#000000 guibg=#336633
" hi CursorColumn  term=none         ctermbg=darkred                                 guibg=#663333
" hi CursorLine    term=none         ctermbg=darkblue                                guibg=#333366
" hi Comment       term=italic       ctermfg=darkcyan ctermbg=black                  guifg=#00a594
" hi Constant      term=underline    ctermfg=blue                                    guifg=#0099dd
" hi Debug         term=bold         ctermfg=red ctermbg=black                       guifg=#dc0000 guibg=#000000
" hi DiffAdd       term=reverse      ctermfg=black ctermbg=cyan                      guifg=#000000 guibg=#007200
" hi DiffChange    term=underline    cterm=reverse ctermfg=darkgreen ctermbg=black   guifg=#000000 guibg=#006700
" hi DiffDelete    term=standout     ctermfg=black ctermbg=cyan                      guifg=#000000 guibg=#007200
" hi DiffText      term=bold         ctermfg=green ctermbg=black                     guifg=#00ac00 guibg=#000000
" hi Directory     term=underline    ctermfg=green ctermbg=black                     guifg=#336633 guibg=#000000
" hi Folded                          ctermfg=darkgreen ctermbg=black                 guifg=#20de20 guibg=#000000
" hi FoldColumn                      ctermfg=darkgreen ctermbg=black                 guifg=#20de20 guibg=#000000
" hi Function      term=standout     ctermfg=darkgreen                               guifg=#22bb22
" hi Identifier    term=underline    ctermfg=darkcyan                                gui=underline guifg=#008800
" hi Ignore                          ctermfg=lightgreen                              guifg=#33bb33
" hi IncSearch     term=reverse      ctermfg=black ctermbg=darkgreen                 guifg=#000000 guibg=#336633
" hi MatchParen    term=bold         ctermbg=green                                   guifg=#009900
" hi ModeMsg       term=bold         cterm=bold                                      gui=bold
" hi MoreMsg       term=bold         cterm=bold                                      gui=bold

" hi Normal guifg=ivory guibg=Black ctermfg=231 ctermbg=NONE
" hi SignColumn gui=NONE guifg=Cyan guibg=Grey cterm=NONE ctermfg=51 ctermbg=250
" hi SpellBad gui=undercurl guifg=NONE guisp=Red cterm=undercurl ctermfg=NONE ctermbg=196
" hi SpellCap gui=undercurl guifg=NONE guisp=Blue cterm=undercurl ctermfg=NONE ctermbg=21
" hi SpellRare gui=undercurl guifg=NONE guisp=Magenta cterm=undercurl ctermfg=NONE ctermbg=201
" hi SpellLocal gui=undercurl guifg=NONE guisp=Cyan cterm=undercurl ctermfg=NONE ctermbg=51
" hi Pmenu gui=NONE guifg=NONE guibg=Magenta cterm=NONE ctermfg=NONE ctermbg=201
" hi PmenuSel gui=NONE guifg=NONE guibg=DarkGrey cterm=NONE ctermfg=NONE ctermbg=248
" hi PmenuSbar gui=NONE guifg=NONE guibg=Grey cterm=NONE ctermfg=NONE ctermbg=250
" hi PmenuThumb gui=reverse guifg=NONE guibg=NONE cterm=reverse ctermfg=NONE ctermbg=NONE
" hi CursorColumn gui=NONE guifg=NONE guibg=Grey40 cterm=NONE ctermfg=NONE ctermbg=241
" hi CursorLine gui=NONE guifg=NONE guibg=Grey40 cterm=NONE ctermfg=NONE ctermbg=241
" hi MatchParen gui=NONE guifg=NONE guibg=DarkCyan cterm=NONE ctermfg=NONE ctermbg=30
" hi TabLineFill guifg=#272d2f guibg=#272d2f gui=None cterm=None ctermfg=236 ctermbg=236
" hi TabLine guifg=MistyRose3 guibg=#272d2f gui=None cterm=None ctermfg=181 ctermbg=236
" hi TabLineSel guifg=LightBlue3 guibg=#272d2f gui=None cterm=None ctermfg=110 ctermbg=236
" hi ErrorMsg gui=NONE guifg=Red guibg=Linen cterm=NONE ctermfg=196 ctermbg=NONE
" hi IncSearch gui=NONE guibg=LightGreen guifg=Black cterm=NONE ctermfg=16 ctermbg=120
" hi ModeMsg gui=NONE guifg=fg guibg=bg cterm=NONE ctermfg=fg ctermbg=NONE
" hi StatusLine gui=NONE guifg=LightBlue3 guibg=#272d2f cterm=NONE ctermfg=110 ctermbg=236
" hi StatusLineNC gui=NONE guifg=MistyRose3 guibg=#272d2f cterm=NONE ctermfg=181 ctermbg=236
" hi VertSplit gui=NONE guifg=LightBlue4 guibg=Black cterm=NONE ctermfg=66 ctermbg=NONE
" hi Visual gui=reverse guifg=LightBlue4 guibg=Black cterm=reverse ctermfg=66 ctermbg=16
" hi VisualNOS gui=underline guifg=fg guibg=bg cterm=underline ctermfg=fg ctermbg=NONE
" hi DiffText gui=NONE guifg=Yellow guibg=LightSkyBlue4 cterm=NONE ctermfg=226 ctermbg=66
" hi Cursor guibg=Lavender guifg=Black ctermfg=16 ctermbg=255
" hi lCursor guibg=Lavender guifg=Black ctermfg=16 ctermbg=255
" hi Directory guifg=LightGreen guibg=bg ctermfg=120 ctermbg=NONE
" hi LineNr guifg=LightBlue3 guibg=bg ctermfg=110 ctermbg=NONE
" hi MoreMsg gui=NONE guifg=SeaGreen guibg=bg cterm=NONE ctermfg=29 ctermbg=NONE
" hi NonText gui=NONE guifg=Cyan4 guibg=Black cterm=NONE ctermfg=30 ctermbg=NONE
" hi Question gui=NONE guifg=LimeGreen guibg=bg cterm=NONE ctermfg=77 ctermbg=NONE
" hi Search gui=NONE guifg=SkyBlue4 guibg=Bisque cterm=NONE ctermfg=60 ctermbg=224
" hi SpecialKey guifg=Cyan guibg=bg ctermfg=51 ctermbg=NONE
" hi Title gui=NONE guifg=Yellow2 guibg=bg cterm=NONE ctermfg=226 ctermbg=NONE
" hi WarningMsg guifg=Tomato3 guibg=Black ctermfg=167 ctermbg=NONE
" hi WildMenu gui=NONE guifg=Black guibg=SkyBlue4 cterm=NONE ctermfg=16 ctermbg=60
" hi Folded guifg=#f4aba2 guibg=bg ctermfg=217 ctermbg=NONE
" hi FoldColumn guifg=DarkBlue guibg=Grey ctermfg=18 ctermbg=250
" hi DiffText gui=bold guifg=NONE guibg=Red cterm=bold ctermfg=NONE ctermbg=196
" hi DiffAdd gui=NONE guifg=Blue guibg=LightCyan cterm=NONE ctermfg=21 ctermbg=195
" hi DiffChange gui=NONE guifg=white guibg=LightCyan4 cterm=NONE ctermfg=231 ctermbg=102
" hi DiffDelete gui=None guifg=LightBlue guibg=LightCyan cterm=None ctermfg=152 ctermbg=195
" hi Constant gui=NONE guifg=MistyRose3 guibg=bg cterm=NONE ctermfg=181 ctermbg=NONE
" hi String gui=NONE guifg=LightBlue3 guibg=bg cterm=NONE ctermfg=110 ctermbg=NONE
" hi Special gui=NONE guifg=GoldenRod guibg=bg cterm=NONE ctermfg=178 ctermbg=NONE
" hi Statement gui=NONE guifg=khaki guibg=bg cterm=NONE ctermfg=222 ctermbg=NONE
" hi Operator gui=NONE guifg=#8673e8 guibg=bg cterm=NONE ctermfg=98 ctermbg=NONE
" hi Ignore gui=NONE guifg=bg guibg=bg cterm=NONE ctermfg=NONE ctermbg=NONE
" hi ToDo gui=NONE guifg=DodgerBlue guibg=bg cterm=NONE ctermfg=33 ctermbg=NONE
" hi Error gui=NONE guifg=Red guibg=Linen cterm=NONE ctermfg=196 ctermbg=15
" hi Identifier gui=bold guifg=LightBlue4 guibg=bg cterm=bold ctermfg=66 ctermbg=NONE
" hi PreProc gui=NONE guifg=#ffa0a0 guibg=bg cterm=NONE ctermfg=217 ctermbg=NONE
" hi Type gui=NONE guifg=NavajoWhite guibg=bg cterm=NONE ctermfg=223 ctermbg=NONE
" hi Underlined gui=underline guifg=fg guibg=bg cterm=underline ctermfg=fg ctermbg=NONE

" hi Error         term=reverse,bold ctermfg=black ctermbg=red                       guifg=#000000 guibg=#dc0000
" hi ErrorMsg      term=reverse,bold ctermfg=white ctermbg=red                       guifg=#ffffff guibg=#dc0000
" hi NonText                         ctermfg=brown                                   guifg=#b26818
" hi Normal                          ctermfg=gray ctermbg=black                      guifg=#aaaaaa guibg=#000000
" hi Pmenu         term=reverse      ctermfg=black ctermbg=green                     guifg=#000000 guibg=#337733
" hi PmenuSel      term=bold         ctermfg=black  ctermbg=gray                     guifg=#000000 guibg=#999999
" hi PmenuSbar     term=reverse      ctermfg=black ctermbg=green                     guifg=#000000 guibg=#337733
" hi PmenuThumb    term=reverse      ctermfg=gray ctermbg=black                      guifg=#999999 guibg=#000000
" hi PreProc       term=standout     ctermfg=darkgreen                               guifg=#22bb22
" hi Question      term=standout     ctermfg=red                                     guifg=#ff0000
" hi Search        term=reverse      ctermfg=black ctermbg=darkgreen                 guifg=#000000 guibg=#228822
" hi SignColumn                      ctermfg=darkgreen                               guifg=#20de20 guibg=#000000
" hi Special       term=bold         ctermfg=green                                   guifg=#00ff00
" hi SpecialKey    term=bold         ctermfg=green                                   guifg=#00ff00
" hi SpellBad      term=reverse      cterm=underline ctermfg=red ctermbg=black       gui=undercurl guisp=#ff0000
" hi SpellCap      term=reverse      cterm=underline ctermfg=yellow ctermbg=black    gui=undercurl guisp=#00ffff
" hi SpellLocal    term=reverse      cterm=underline ctermfg=blue ctermbg=black      gui=undercurl guisp=#0000ff
" hi SpellRare     term=reverse      cterm=underline ctermfg=darkgreen ctermbg=black gui=undercurl guisp=#00ff00
" hi Statement     term=standout     ctermfg=darkred                                 guifg=#ac0000
" hi StatusLine    term=reverse      ctermfg=darkgreen ctermbg=black                 gui=none guibg=#228822 guifg=#000000
" hi StatusLineNC  term=reverse      ctermfg=darkgreen ctermbg=blue                  gui=none guibg=#336633 guifg=#000000
" hi TabLine       term=reverse      cterm=reverse ctermfg=black ctermbg=green       guibg=#222222 guifg=#228822
" hi TabLineFill   term=reverse      cterm=reverse ctermfg=green ctermbg=black       guibg=#222222 guifg=#226622
" hi TabLineSel                      ctermfg=black ctermbg=green                     guibg=#228822 guifg=#222222
" hi Title         term=reverse      ctermfg=black ctermbg=green                     guifg=#000000 guibg=#00ff00
" hi Todo          term=reverse      cterm=reverse ctermfg=darkgreen ctermbg=black   guibg=#336633 guifg=#000000
" hi Type          term=standout     ctermfg=green                                   guifg=#559955
" hi Visual        term=reverse      cterm=reverse ctermfg=darkgreen                 guifg=#000000 guibg=#336633
" hi VisualNOS     term=reverse,bold cterm=reverse ctermbg=darkgreen                 guifg=#000000 guibg=#228822
" hi VertSplit     term=reverse      ctermfg=darkgreen                               guifg=#336633
" hi User1         term=standout     cterm=bold ctermbg=darkgreen ctermfg=red        gui=bold guibg=#228822 guifg=#FF0000
" hi WarningMsg    term=reverse      ctermfg=black ctermbg=yellow                    guifg=#000000 guibg=#007a7a
" hi WildMenu      term=reverse      ctermfg=blue ctermbg=darkgreen                  guifg=#000099 guibg=#00ac00
"
" " ----------------------------------------------------------------------------------------------------------------------------------
" " Common groups that link to other hi definitions.
"
" hi link Character      Constant
" hi link Number         Constant
" hi link Boolean        Constant
" hi link String         Constant
"
" hi link Operator       LineNr
"
" hi link Float          Number
"
" hi link Define         PreProc
" hi link Include        PreProc
" hi link Macro          PreProc
" hi link PreCondit      PreProc
"
" hi link Repeat         Question
"
" hi link Conditional    Repeat
"
" hi link Delimiter      Special
" hi link SpecialChar    Special
" hi link SpecialComment Special
" hi link Tag            Special
"
" hi link Exception     Statement
" hi link Keyword       Statement
" hi link Label         Statement
"
" hi link StorageClass  Type
" hi link Structure     Type
" hi link Typedef       Type
"
" " ----------------------------------------------------------------------------------------------------------------------------------
" " vim:tw=132:ts=4:sw=4
"
