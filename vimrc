" Use Vim settings
set nocompatible

" Plugins
call pathogen#infect()

" View Options
set hidden
set number
set guioptions-=T
set showbreak=...
set wrap linebreak nolist
set vb t_vb=
set splitbelow
set splitright

" Search
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

" Colorshem
syntax on
set guifont=Menlo:h14
set background=dark
colorschem 3den

function! SetTabSize()
  let &l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth =')
  let &l:softtabstop = &l:tabstop
  let &l:shiftwidth = &l:tabstop
endfunction

" Tabs & Indentation
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent expandtab smarttab smartindent

" ######### Automatic Commands ##########
if has("autocmd")
  " Reload VIMRV
  autocmd BufWritePost *vimrc source $MYVIMRC

  " Trim white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Auto Complete
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
  let cmd = ":! rspec % -cfn " . a:args
  execute cmd
endfunction

" run one rspec example or describe block based on cursor position
nmap !s :call RunSpec("-l " . <C-r>=line('.')<CR>)<CR>
" run full rspec file
nmap !S :call RunSpec("")<CR>

" ########### Shortcuts ###############
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>t :CommandTFlush<CR>\|:CommandT<CR>
nmap <leader>b :CommandTFlush<CR>\|:CommandTBuffer<CR>
nmap <leader>n :NERDTreeToggle<CR>

" key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"key mapping for saving file
nmap <C-s> :w<CR>
nmap <D-s> :w<CR>

" key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
imap <D-[> <Esc><<i
imap <D-]> <Esc>>>i

" autocomplete
imap <C-Space> <C-n>
imap <S-C-Space> <C-p>


