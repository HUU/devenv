# devenv

My personal configurations and dotfiles for any *nix-like development environment I use.

# Installing

Clone the repository somewhere:
```
git clone https://github.com/HUU/devenv.git
```
Run the install script:
```
./devenv/install.sh
```
Logout and log back in (`install.sh` changes your login shell to ZSH).

# Included

* zsh
  * oh-my-zsh plugin manager
  * Custom theme (geometry)
  * WORD-based navigation
  * Up/down arrow history search
* tmux
  * Mouse mode
  * Simpler keybinds for making panes
  * Buffers synchronize with system clipboard
  * One Dark theme with powerline status bar
* SpaceVim
  * Preconfigured language support for C/C++/Python/JS/CSS/HTML
  * Fuzzy finder (denite)
  * One Dark color scheme
* One Dark theme for Gnome Terminal
* Caps Lock maps to Hyper modified on hold, Ctrl+B on press
* Fira Code font patched for Powerline and other symbol systems ("FuraCode Mono")
* Quick navigation aliases (up1, up2, .., up9)
* Git aliases (git ci, git st, git co, git br, git last)
* Common dev tools i.e. plantuml, meld, tig, ncdu, htop, tcpdump
