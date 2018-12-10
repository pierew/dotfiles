#!/bin/bash
for item in $(ls -A -1 ~/.dotfiles/ | grep -e "^\.")
do
    ln -s ~/.dotfiles/${item}
done
