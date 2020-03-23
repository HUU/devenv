#!/usr/bin/env bash

# color scheme for Gnome terminal
bash "${DEVENV}/env/gnome-one-dark.sh"

TERM_PROFILE_ID=`dconf read /org/gnome/terminal/legacy/profiles:/list | sed -n "s/\[\'\(.*\)\']/\1/p"`
dconf write "/org/gnome/terminal/legacy/profiles:/:${TERM_PROFILE_ID}/font" "'FuraCode Nerd Font Mono 14'"

