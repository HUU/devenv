#!/usr/bin/env bash

# just in case...
git submodule update --init --recursive

# environemtn-specific setup
. "${DEVENV}/env/install.sh"

# tmux
if [[ ! -e "${HOME}/.tmux.conf" ]]; then
  ln -s "${DEVENV}/tmux.conf" "${HOME}/.tmux.conf"
fi

# spacevim
curl -sLf https://spacevim.org/install.sh | bash
if [[ ! -e "${HOME}/.SpaceVim.d" ]]; then
  ln -s "${DEVENV}/SpaceVim" "${HOME}/.SpaceVim.d"
fi 

# my fonts
sudo mkdir -p "/usr/share/fonts/opentype/devenv/"
sudo cp -r "${DEVENV}/fonts/*" "/usr/share/fonts/opentype/devenv"
sudo fc-cache -f -v

# node-based development tools
sudo npm install -g vscode-html-languageserver-bin remark remark-cli remark-stringify remark-frontmatter wcwidth import-js

# python-based development tools
pip3 install --user flake8 yapf autoflake isort coverage ipython

# basic Data Science
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/install_miniconda.sh
bash /tmp/install_miniconda.sh -b

chsh -s /bin/zsh $(whoami)

