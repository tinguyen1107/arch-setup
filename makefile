.PHONY: all
.PHONY: test
.PHONY: clean

init:
	sh scripts/init.sh
tmux:
	sh scripts/install_tmux.sh

load_config:
	sh scripts/load_config.sh

install_app:
	yay -S slack-desktop
	yay -S brave-bin

ngrok:
	sudo tar -xvzf ~/Downloads/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

node:
	sh scripts/install_node.sh
