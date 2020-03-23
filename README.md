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
Source the entrypoint (`devenv`) from your `.zshrc`:
```
echo 'source "${HOME}/devenv/devenv"' >> ~/.zshrc
```
Logout and log back in (`setup.sh` changes your login shell to ZSH).

# Work In Progress

This is an attempt at exporting my hand-rolled development setup from my Mac, which I am retiring, into something I can clone and activate on any *nix-like box with minimal effort.

Some things that are still missing:
* VSCode settings
* Frequently used utilities (htop, nc, tcpdump, etc)
* Preconfigured conda environment for Jupyter
* Bazel, cmake
* .NET? do I need this any more?
