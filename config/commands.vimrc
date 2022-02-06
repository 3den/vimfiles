" Automatic Commands
if has("autocmd")
    autocmd BufWritePost *vimrc source %

    " Clean Fugitive Buffer
    autocmd BufReadPost fugitive://* set bufhidden=delete

    " Auto Complete
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

    " Formats
    autocmd BufEnter *.json setf json
    autocmd BufEnter *.scss setf scss
    autocmd BufEnter *.jsx set filetype=jsx
    autocmd BufEnter *.es6 set filetype=js
    autocmd FileType make set noexpandtab

    " Trim white spaces retab
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufWritePre * :retab
endif

" Commands
command! W :w
