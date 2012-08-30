" Use Vim settings
set nocompatible

" Plugins
call pathogen#infect()
filetype plugin indent on

" View Options
set showbreak=...
set vb t_vb=
set scrolloff=3
set laststatus=2
set textwidth=80
set title hidden number
set wrap linebreak nolist
set splitbelow splitright

" Search
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

" Tab completion options
set showmode showcmd wildmenu
set wildmode=list:longest,list:full
set complete=.,w,t

" Intuitive backspacing.
set backspace=indent,eol,start

" Tabs & Indentation
set tabstop=2 softtabstop=2 shiftwidth=2
set smartindent autoindent expandtab smarttab

"folding settings
set foldmethod=indent
set foldlevel=1
set nofoldenable

" Colorshem
syntax on
colorscheme wombat256

" File Explorer
let g:netrw_list_hide='^\..*'

" Tests
let g:rubytest_in_quickfix=0

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

" Automatic Commands
if has("autocmd")
  " Reload VIMRC
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd BufWritePost .gvimrc source $MYGVIMRC

  " Clean Fugitive Buffer
  autocmd BufReadPost fugitive://* set bufhidden=delete

  " Trim white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Auto Complete
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif

" Commands
command! W :w

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")
endfunc
nmap <C-S-P> :call <SID>SynStack()<CR>

" ########### Shortcuts ###############
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>x :Ex<CR>
nmap <leader>o :only<CR>
nmap <leader>g :only<CR>\|:Gstatus<CR>\|<C-w>J

" Tests
map ,s :exec "!rspec -fd %"<CR>
map ,S :exec "!rspec -fd % -l " . line(".")<CR>

" key mapping for window navigation
map <C-_> <C-w>_
map <c-h> <c-w>h
map <c-j> <c-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" key mapping for saving file
nmap <C-s> :w<CR>
nmap <D-s> :w<CR>

" key mapping for tab indentation
nmap <S-Tab> <<
nmap <Tab> >>
vmap <S-Tab> <gv
vmap <Tab> >gv

" key mappings for selection
map <Leader>= ggVG=
map <Leader>f :set foldenable!<CR>

" autocomplete
imap <C-Space> <C-n>
imap <S-C-Space> <C-p>

