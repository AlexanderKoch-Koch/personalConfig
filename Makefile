

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
	sudo apt install xclip
	cp .tmux.conf ~/.tmux.conf

capslock: us keyboard
	cp us /usr/share/X11/xkb/symbols
	cp keyboard /etc/default
	setxkbmap


pycharm:
	cp .ideavimrc ~/

