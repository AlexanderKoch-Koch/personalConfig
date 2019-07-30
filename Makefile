

vim: vimrc vundle
	echo 'please run :PluginInstall in vim'


vimrc: .vimrc
	cp .vimrc ~/.vimrc

vundle: 
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
