#!/usr/bin/env bash
set -e
echo "Using Ubuntu; applying Ubuntu-specific setup"

# Basic tools for environment
sudo apt install -y tmux watch zsh build-essential global pkg-config python python3 python3-pip nodejs npm vim-gnome vim-gtk plantuml xclip xsel clang meld tig

# Xcape
sudo apt -y install libx11-dev libxtst-dev libxi-dev
WORKDIR=$(mktemp -d)
git clone https://github.com/alols/xcape.git "${WORKDIR}"
cd "${WORKDIR}"
make
sudo make install
cd -
rm -rf "${WORKDIR}"

# Commonly used system utilities
sudo apt install -y htop netcat tcpdump ncdu iotop net-tools
