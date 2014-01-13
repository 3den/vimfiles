default: install

install:
	ln -sf ~/.vim/vimrc ~/.vimrc
	ln -sf ~/.vim/gvimrc ~/.gvimrc
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +BundleInstall +qall
