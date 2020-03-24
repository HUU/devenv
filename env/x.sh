#!/usr/bin/env bash
set -e

if [[ ! -e "${HOME}/.Xmodmap" ]]; then
  ln -s "${DEVENV}/Xmodmap.conf" "${HOME}/.Xmodmap"
fi


