#Fresh Install

Make sure to delete your `~/.vim` before installing.

    git clone https://github.com/3den/vimfiles.git ~/.vim
    cd ~/.vim
    make

Now you can start using my vim settup ;)

#You can track my .vim files as branch in your .vim repository:
  cd ~/.vim
  git remote add 3den git://github.com/3den/vimfiles.git
  git branch --track 3den 3den/master
  git checkout 3den
  make
