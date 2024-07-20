.PHONY: all
.PHONY: test
.PHONY: clean

init:
	sh scripts/init.sh
tmux:
	sh scripts/install_tmux.sh

load_config:
	mkdir -p tst/.config/
	cp -rf configs/dotfile/* tst/.config/
