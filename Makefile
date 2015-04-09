default: symlink bundle

symlink:
	ln -sf ~/.vim/vimrc ~/.vimrc
	ln -sf ~/.vim/gvimrc ~/.gvimrc

bundle:
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +BundleInstall +qall

vim-install:
	hg clone https://vim.googlecode.com/hg/ vim-install
	cd vim-install/src
	make distclean
	make
	suso make install

.PHONY: default symlink
