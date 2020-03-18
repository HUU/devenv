#!/usr/bin/env bash

# just in case...
git submodule update --init --recursive

DISTRO_NAME=$(lsb_release -d | awk '{print $2}')
if [ "${DISTRO_NAME}" = "Ubuntu" ]; then
    . "${DEVENV}/ubuntu.sh"
fi

# spacevim
curl -sLf https://spacevim.org/install.sh | bash

# color scheme for Gnome terminal
bash gnome-one-dark.sh

# my fonts
sudo mkdir -p "/usr/share/fonts/opentype/devenv/"
sudo cp -r "${DEVENV}/fonts/*" "/usr/share/fonts/opentype/devenv"
sudo fc-cache -f -v

TERM_PROFILE_ID=`dconf read /org/gnome/terminal/legacy/profiles:/list | sed -n "s/\[\'\(.*\)\']/\1/p"`
dconf write "/org/gnome/terminal/legacy/profiles:/:${TERM_PROFILE_ID}/font" "'FuraCode Nerd Font Mono 14'"

# node-based development tools
sudo npm install -g vscode-html-languageserver-bin remark remark-cli remark-stringify remark-frontmatter wcwidth import-js

# python-based development tools
pip3 install --user flake8 yapf autoflake isort coverage ipython

# basic Data Science
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/install_miniconda.sh
bash /tmp/install_miniconda.sh -b

chsh -s /bin/zsh $(whoami)

