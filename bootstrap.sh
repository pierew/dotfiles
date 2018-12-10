#!/bin/bash
for item in $(ls -d -A -1 ~/.dotfiles/ | grep -e "^\.")
do
    ln -s ~/.dotfiles/${item}
done

for item in $(ls -f -A -1 ~/.dotfiles/ | grep -e "^\.")
do
    ln -s ~/.dotfiles/${item}
done
