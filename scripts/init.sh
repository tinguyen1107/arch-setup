#!/bin/bash

sudo pacman -Sy --noconfirm neovim tmux openssl make zsh neofetch

# set up oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
