ifndef VERBOSE
.SILENT:
endif

.PHONY: tmux
tmux:
	tmux source-file ~/.tmux.conf

.PHONY: link
link:
	sh ./.bin/link.sh
	cd ./dotfiles_private/ && make link
