" Transparent Window
set transparency=10

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" Font
set guifont=Menlo:h14

" Color
colorscheme wombat256

" Automatic Commands
if has("autocmd")
  " Reload VIMRV
  autocmd BufWritePost gvimrc source $MYGVIMRC
endif

