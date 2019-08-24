

vim: vimrc vundle
	echo 'please run :PluginInstall in vim'


vimrc: .vimrc
	cp .vimrc ~/.vimrc

vundle: 
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

bash: .bash_aliases
	cp .bash_aliases ~/.bash_aliases
	echo "make sure your .bashrc sources this new file"

tmux: .tmux.conf
	cp .tmux.conf ~/.tmux.conf

xmodmap: .Xmodmap
	cp .Xmodmap ~/.Xmodmap
	echo "xmodmap ~/.Xmodmap has to be executed"

