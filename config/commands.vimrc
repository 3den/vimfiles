" Automatic Commands
if has("autocmd")
    autocmd BufWritePost *vimrc source %

    " Clean Fugitive Buffer
    autocmd BufReadPost fugitive://* set bufhidden=delete

    " Trim white spaces
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufWritePre * :retab

    " Auto Complete
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

    " Formats
    autocmd BufEnter *.json setf json
    autocmd BufEnter *.scss setf scss
    autocmd BufEnter *.jsx set filetype=jsx
    autocmd BufEnter *.es6 set filetype=js
    autocmd BufEnter * set expandtab smartindent smarttab autoindent
endif

" Commands
command! W :w
