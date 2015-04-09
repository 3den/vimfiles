syntax on
filetype plugin indent on
colorscheme wombat256
highlight ColorColumn ctermbg=Black guibg=Black

" View Options
let &colorcolumn=join(range(120,999),",")
let &showbreak=repeat(' ', 4)
set diffopt+=vertical
set scrolloff=3
set laststatus=2
set vb t_vb=
set title hidden number cursorline
set wrap linebreak nolist breakindent
set splitbelow splitright nofoldenable ruler

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
set tabstop=4 softtabstop=4 shiftwidth=4
set smartindent autoindent expandtab smarttab

"folding settings
set foldmethod=indent
set foldlevel=1
set nofoldenable

" File Explorer
let g:netrw_list_hide = '^\..*'
let g:netrw_fastbrowse = 0
let g:netrw_altv = 1
let g:netrw_fastbrowse = 2
let g:netrw_retmap = 1
let g:netrw_localrmdir = 'rm -ri'
let g:netrw_rmdir_cmd = 'ssh USEPORT HOSTNAME rm -ri'
let g:ctrlp_custom_ignore = '\v(\/\.)|(spec\/cassettes)|(\.log)|(node_modules)'
let g:ctrlp_root_markers = ['bower_components', 'node_modules']

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_sass_checkers = []

" Emmet
let g:use_emmet_complete_tag = 1

" Ack
let g:ack_default_options = ' -s -H --nocolor --nogroup --column --ignore-dir={build,log,tmp,artifacts}'
