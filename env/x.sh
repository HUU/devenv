#!/usr/bin/env bash
set -e

if [[ ! -e "${HOME}/.Xmodmap" ]]; then
  ln -s "${DEVENV}/Xmodmap.conf" "${HOME}/.Xmodmap"
fi

sudo cp "${DEVENV}/80_xmodmap" /etc/X11/Xsession.d/

mkdir -p "${HOME}/.config/autostart"
ln -s "${DEVENV}/xmodmap.desktop" "${HOME}/.config/autostart/10_xmodmap.desktop"

