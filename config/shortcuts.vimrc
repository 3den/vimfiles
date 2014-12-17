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
nmap <leader>V :tabedit ~/.vim/config<CR>
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
let g:test="mocha %"
let g:tests="npm run devtest"
map <leader>t :w<CR>\|:exec "!".g:test<CR>
map <leader>T :w<CR>\|:exec "!".g:tests<CR>

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
