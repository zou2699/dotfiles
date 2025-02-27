.PHONY: sync-alacritty
sync-alacritty:
	cp ~/.config/alacritty/* ./alacritty/

.PHONY: sync-nvim
sync-nvim:
	rm -rf nvim
	cp -r ~/.config/nvim ./nvim
	rm -rf ./nvim/.git

.PHONY: sync-tmux
sync-tmux:
	cp ~/.tmux.conf ./tmux
