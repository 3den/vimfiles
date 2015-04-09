" Automatic Commands
if has("autocmd")
    set tabstop=4 softtabstop=4 shiftwidth=4

    autocmd BufWritePost *vimrc source %

    " Clean Fugitive Buffer
    autocmd BufReadPost fugitive://* set bufhidden=delete

    " Trim white spaces
    autocmd BufWritePre * :%s/\s\+$//e

    " Auto Complete
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

    " Formats
    autocmd BufEnter *.json setf json
    autocmd BufEnter *.scss setf scss
    autocmd BufEnter *.jsx set filetype=jsx
endif

" Commands
command! W :w
