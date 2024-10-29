#!/bin/bash

sudo pacman -Sy --noconfirm \
  neovim \
  tmux \
  openssl \
  make \
  zsh \
  zsh-syntax-highlighting \
  docker \
  docker-compose \
  neofetch \
  ttf-roboto-mono-nerd \
  lazygit \
  flameshot \
  bluez \
  bluez-utils \
  blueman \
  yq

# set up oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup docker
sudo systemctl start docker.service
sudo systemctl enable docker.service 

if groups $USER | grep -q "\bdocker\b"; then
  echo "$USER is already in the docker group"
else
  echo "Adding $USER to the docker group"
  sudo usermod -aG docker $USER
  echo "$USER has been added to the docker group. Please log out and log back in for the changes to take effect."
fi
