" Use Vim settings
set nocompatible

" Plugins
call pathogen#infect()

" View Options
set hidden
set number
set showbreak=...
set showmode
set wrap linebreak nolist
set vb t_vb=
set splitbelow
set splitright

" Search
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

" Tab completion options
set showcmd
set wildmode=list:longest,list:full
set complete=.,w,t

" Colorshem
syntax on
set background=dark
colorschem 3den

" Tabs & Indentation
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent expandtab smarttab

" Automatic Commands
if has("autocmd")
  " Reload VIMRV
  autocmd BufWritePost vimrc source $MYVIMRC
  autocmd BufWritePost gvimrc source $MYGVIMRC

  " Trim white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Auto Complete
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")
endfunc
nmap <C-S-P> :call <SID>SynStack()<CR>

" Execute open rspec buffer
function! RunSpec(args)
  let cmd = ":! rspec % -cfn " . a:args
  execute cmd
endfunction
nmap !s :call RunSpec("-l " . <C-r>=line('.')<CR>)<CR>
nmap !S :call RunSpec("")<CR>

" ########### Shortcuts ###############
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>t :CommandTFlush<CR>\|:CommandT<CR>
nmap <leader>b :CommandTFlush<CR>\|:CommandTBuffer<CR>
nmap <leader>n :NERDTree %<CR>

" key mapping for window navigation
map <C-_> <C-w>_
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


