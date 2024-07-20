.PHONY: all
.PHONY: test
.PHONY: clean

init:
	sh scripts/init.sh
tmux:
	sh scripts/install_tmux.sh

load_config:
	cp -rf configs/dotfile/* ~/.config/
	cp -f configs/zshrc ~/.zshrc
