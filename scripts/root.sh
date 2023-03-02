#!/bin/bash

sudo pacman -Syu wget #nofucks.
sudo dnf install wget #nofucks. RUN both. NO FUCKS!

echo "Install"

wget https://github.com/aoneone5/dotfiles/raw/main/install
wget https://raw.githubusercontent.com/aoneone5/dotfiles/main/install-vim-plug.sh

chmod +x install
chmod +x install-vim-plug.sh

./install