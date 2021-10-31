" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'duwanis/tomdoc.vim'
Plug 'mattn/emmet-vim'
Plug 'nono/vim-handlebars'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" CoC Extensions
let g:coc_global_extensions = [
  \ 'coc-html',
  \ 'coc-python',
  \ 'coc-solargraph',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-tsserver',
  \ 'coc-css' ]

