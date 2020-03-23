#!/usr/bin/env bash

DISTRO_NAME=$(lsb_release -d | awk '{print $2}')
if [ "${DISTRO_NAME}" = "Ubuntu" ]; then
  echo ">> Ubuntu detected."
    . "${DEVENV}/env/ubuntu.sh"
fi

if xset q &>/dev/null; then
  echo ">> X Server detected."
  . "${DEVENV}/env/x.sh"
fi

if [[ $XDG_CURRENT_DESKTOP =~ "GNOME" ]]; then
  echo ">> Gnome detected."
  . "${DEVENV}/env/gnome.sh"
fi



