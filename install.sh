#!/usr/bin/env bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
export DEVENV="${SCRIPTPATH}"

# just in case...
git -C ${DEVENV} submodule update --init --recursive

# environment-specific setup
. "${DEVENV}/env/install.sh"

# tmux
if [[ ! -e "${HOME}/.tmux.conf" ]]; then
  echo ">> Linking tmux configuration."
  ln -s "${DEVENV}/tmux.conf" "${HOME}/.tmux.conf"
fi

# spacevim
curl -sLf https://spacevim.org/install.sh | bash
if [[ ! -e "${HOME}/.SpaceVim.d" ]]; then
  echo ">> Linking SpaceVim configuration."
  ln -s "${DEVENV}/SpaceVim" "${HOME}/.SpaceVim.d"
fi 

# my fonts
sudo mkdir -p "/usr/share/fonts/opentype/devenv/"
sudo cp -r "${DEVENV}/fonts/"* "/usr/share/fonts/opentype/devenv"
sudo fc-cache -f -v

# node-based development tools
sudo npm install -g vscode-html-languageserver-bin remark remark-cli remark-stringify remark-frontmatter wcwidth import-js

# basic Data Science
if [[ ! -e "${HOME}/miniconda3" ]]; then
  echo ">> No miniconda3 detected; installing."
  curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/install_miniconda.sh
  bash /tmp/install_miniconda.sh -b
fi

export PATH="${HOME}/miniconda3/bin:${PATH}"
conda install -y notebook jupyter seaborn pandas matplotlib 
pip install --user pynvim flake8 yapf autoflake isort coverage ipython

# change defualt shell to ZSH
chsh -s /bin/zsh $(whoami)

