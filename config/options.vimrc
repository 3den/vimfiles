syntax on
filetype plugin indent on
colorscheme wombat256
highlight ColorColumn ctermbg=Black guibg=Black
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" set background=dark

" View Options
let &colorcolumn=join(range(120,999),",")
set diffopt+=vertical
set scrolloff=3
set laststatus=2
set vb t_vb=
set title hidden number cursorline
set wrap linebreak nolist breakindent showbreak=..
set splitbelow splitright nofoldenable ruler
set clipboard=unnamed

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
set complete=.,w,b,t
set history=100

" Intuitive backspacing.
set backspace=indent,eol,start

" Tabs & Indentation
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab smartindent smarttab autoindent

"folding settings
set foldmethod=indent
set foldlevel=1
set nofoldenable

" File Explorer
let g:netrw_list_hide = '^\..*'
let g:netrw_liststyle = 1
let g:netrw_fastbrowse = 0
let g:netrw_altv = 1
let g:netrw_fastbrowse = 2
let g:netrw_retmap = 1
let g:netrw_localrmdir = 'rm -ri'
let g:netrw_rmdir_cmd = 'ssh USEPORT HOSTNAME rm -ri'
let g:ctrlp_root_markers = ['src', 'node_modules']
let g:ctrlp_working_path_mod = "ra"
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(spec\/cassettes)|log|node_modules|vendor|dist|tmp',
  \ 'file': '\v\.(exe|so|dll|log|jpg|svg|png|gif|swp|swf|ttf|woff|eot)'
  \ }

" Emmet
let g:use_emmet_complete_tag = 1

" Ack
let g:ack_default_options = ' -s -H --nocolor --nogroup --column --ignore-dir={build,dist,log,tmp,artifacts,node_modules,vendor,coverage,db,public} --ignore-file=ext:log'
let g:ack_autoclose = 0
