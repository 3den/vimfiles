" Use Vim settings
set nocompatible

set rtp+=~/.vim/bundle/vundle/
source ~/.vim/bundles

" Plugins
syntax on
filetype plugin indent on

" View Options
set showbreak=...
set cursorline
set vb t_vb=
set scrolloff=3
set laststatus=2
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
set wildmode=full
set complete=.,w,t
set history=100

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
colorscheme wombat256

" File Explorer
let g:netrw_list_hide='^\..*'
let g:netrw_fastbrowse=0
let g:netrw_altv=1
let g:netrw_fastbrowse=2
let g:netrw_retmap=1
let g:ctrlp_custom_ignore='\v(\/\.)|(spec\/cassettes)'

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1

" YouCompleteMe
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_filepath_completion_use_working_dir=1
let g:UltiSnipsExpandTrigger="<C-j>"

" Emmet
let g:use_emmet_complete_tag = 1

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
nmap - :Ex<CR>
nmap <leader>V :tabedit $MYVIMRC<CR>
nmap <leader>a <C-w>v\|:A<CR>
nmap <leader>f :CtrlPClearAllCache<CR>\|:CtrlP<CR>
nmap <leader>F :tabnew<CR><leader>f
nmap <leader>b :CtrlPClearAllCache<CR>\|:CtrlPBuffer<CR>
nmap <leader>B :tabnew<CR><leader>b
nmap <leader>o :only<CR>\|:set nofoldenable<CR>
nmap <leader>g :only<CR>\|:Gstatus<CR>\|<C-w>J
nmap <leader>A :only<CR>\|:set nofoldenable<CR>\|:vsplit<CR>\|<C-w>l\|:A<CR>
nmap <leader>q :q<CR>
nmap <leader>Q :qa!<CR>

" Copy & Pastle
vmap <leader>x "+ygvd
vmap <leader>c "+y
map <leader>v "+p

" Toggle Syntastic Errors ON/OFF
nmap <leader>e :SyntasticToggleMode<CR>\|:w<CR>

" Tests
let g:tests="rspec -fd %"
command! RunTests :exec "!".g:tests
map ,t :RunTests<CR>
map <leader>t :w<CR>\|:RunTests<CR>
map <leader>T :w<CR>\|:exec "!rspec -fd % -l " . line(".")<CR>

" Ctags
map <F5> :exec "!ctags -R --exclude=.git --exclude=log --exclude=tmp *"<CR>

" key mapping for navigation
map <C-w>X <C-w>=\|10<C-w>>\|10<C-w>+
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map j gj
map k gk

" key mapping for saving file
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc>:w<CR>

" key mapping for tab indentation
vmap <S-Tab> <gv
vmap <Tab> >gv

" key mappings for selection
map <Leader>= ggVG=

" autocomplete
imap <C-Space> <C-n>
imap <S-C-Space> <C-p>
