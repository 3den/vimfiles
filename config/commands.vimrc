" Automatic Commands
if has("autocmd")
  autocmd BufWritePost *vimrc source %

  " Clean Fugitive Buffer
  autocmd BufReadPost fugitive://* set bufhidden=delete

  " Trim white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Auto Complete
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif

" Commands
command! W :w
