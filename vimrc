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

" Save
set nobackup       " Don't make a backup before overwriting a file.
set nowritebackup  " And again.

" Search
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set smartcase

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
let g:netrw_fastbrowse=0
let g:ctrlp_custom_ignore='\v(\/\.)|(spec\/cassettes)'

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
nmap <leader>a <C-w>v\|:A<CR>
nmap <leader>f :CtrlPClearAllCache<CR>\|:CtrlP<CR>
nmap <leader>b :CtrlPClearAllCache<CR>\|:CtrlPBuffer<CR>
nmap <Leader>t :tabnew<CR>\|:CtrlPClearAllCache<CR>\|:CtrlP<CR>
nmap - :Ex<CR>
nmap <leader>o :only<CR>\|:set nofoldenable<CR>
nmap <leader>g :only<CR>\|:Gstatus<CR>\|<C-w>J
nmap <leader>A :only<CR>\|:vsplit<CR>\|<C-w>l\|:A<CR>

" Toggle Syntastic Errors ON/OFF
nmap <leader>e :SyntasticToggleMode<CR>\|:w<CR>

" Tests
let g:tests="rspec -fd %"
command! RunTests :exec "!".g:tests
map ,t :RunTests<CR>
map <leader>s :w<CR>\|:RunTests<CR>
map <leader>S :w<CR>\|:exec "!rspec -fd % -l " . line(".")<CR>

" Ctags
map <F5> :exec "!ctags -R --exclude=.git --exclude=log --exclude=tmp *"<CR>

" key mapping for navigation
map <C-_> <C-w>_
map <c-h> <c-w>h
map <c-j> <c-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map j gj
map k gk

" key mapping for saving file
nmap <C-s> :w<CR>
nmap <D-s> :w<CR>

" key mapping for tab indentation
nmap <S-Tab> <<
vmap <S-Tab> <gv
vmap <Tab> >gv

" key mappings for selection
map <Leader>= ggVG=

" autocomplete
imap <C-Space> <C-n>
imap <S-C-Space> <C-p>

