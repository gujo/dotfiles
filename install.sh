#!/bin/bash

FILES="emacs emacs.d bash_profile bash_prompt bashrc bash_aliases tmux.conf gitignore_global zshrc oh-my-zsh"

# back up old config files and replace with symlinks to dotfiles dir
mkdir -p ~/.dotfiles_backup

for file in $FILES; do
    mv ~/.$file ~/.dotfiles_backup/
    ln -s ~/dotfiles/$file ~/.$file
done
