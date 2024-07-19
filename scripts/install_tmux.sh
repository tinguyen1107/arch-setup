#!/bin/bash
sudo pacman -S --noconfirm tmux

git clone https://github.com/gpakosz/.tmux.git "$HOME/.oh-my-tmux"
mkdir -p "$HOME/.config/tmux"
ln -s "$HOME/.oh-my-tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"
cp "$HOME/.oh-my-tmux/.tmux.conf.local" "$HOME/.config/tmux/tmux.conf.local" 
