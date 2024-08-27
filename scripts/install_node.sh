#!/bin/bash

# Install nodejs npm
sudo pacman -Syyu nodejs npm

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
