# Legend for integrating .dotfiles

There is an easy script to run that should set up all of these links.
Run `./setup_links.sh` in the terminal to setup the symlinks for the dotfiles.
If it does not work for whatever reason, or we are curious how it is being done,
below lists how each link is crafted.

---

## nvim

Link the 'nvim' folder into ~/.config

## bash

Link .bashrc into ~

## zsh

Link .zshrc and zsh_custom into ~

## antidote

Link .zsh_plugins.txt into ~

## alacritty

Link .alacritty.toml into ~

## powerlevel10k

Link .p10k.zsh into ~

## profile_stuff

Link .profile into ~

## tmux

Link .tmux.conf into ~

## vim

Link .vimrc into ~

---

### Depracated

---

#### oh-my-zsh

Inside is the 'custom' folder; link the whole 'custom' folder
into ~/.oh-my-zsh

#### kitty

Link kitty.conf and kitty.conf.bak into ~/.config/kitty
