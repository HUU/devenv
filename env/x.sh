#!/usr/bin/env bash

if [[ ! -e "${HOME}/.Xmodmap" ]]; then
  ln -s "${DEVENV}/Xmodmap.conf" "${HOME}/.Xmodmap"
fi


