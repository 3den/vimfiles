== Install
  cd
  git clone https://github.com/3den/vimfiles.git .vim
  vim
  :BundleInstall

You can track my .vim files as branch in your .vim repository:
	cd ~/.vim
	git remote add 3den git://github.com/3den/vimfiles.git
	git branch --track 3den 3den/master
	git checkout 3den
