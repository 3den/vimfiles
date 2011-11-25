" Plugins
call pathogen#infect()

" View Options
set hidden
set number
set guioptions-=T
set showbreak=...
set wrap linebreak nolist
set vb t_vb=

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

syntax on
colorschem desert
set guifont=Menlo:h14


" Tabs & Indentation
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent expandtab smarttab

" Automatic Commands
if has("autocmd")
  " Reload VIMRV
  autocmd BufWritePost *vimrc source $MYVIMRC

  " Trim white spaces
  autocmd BufWritePre * :%s/\s\+$//e
endif

" Shortcuts
nmap <leader>v :tabedit $MYVIMRC<CR>
map <D-t> :edit .<CR>
