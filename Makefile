nvim:
	cp .config/nvim/init.vim ~/.config/nvim/init.vim && source ~/.config/nvim/init.vim

tmux:
	cp .tmux.conf ~/ && tmux source-file ~/.tmux.conf
