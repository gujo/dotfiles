#!/bin/bash

FILES="emacs bash_profile bash_prompt bashrc tmux.conf"

# back up old config files and replace with symlinks to dotfiles dir
mkdir -p ~/.dotfiles_backup

for file in $FILES; do
    mv ~/.$file ~/.dotfiles_backup/
    ln -s ~/dotfiles/$file ~/.$file
done
