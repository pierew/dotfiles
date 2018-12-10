#!/bin/bash
for item in $(ls -F -A -1 ~/.dotfiles/ | grep -e "^\." | grep '/' | grep -v 'git' | grep -v 'ssh')
do
    ln -s ~/.dotfiles/${item} ~
done

for item in $(ls -F -A -1 ~/.dotfiles/ | grep -e "^\." | grep -v '/' | grep -v 'gitmodules' | grep -v 'gitignore')
do
    ln -s ~/.dotfiles/${item} ~
done

mkdir -p ~/.ssh
ln -s ~/.dotfiles/.ssh/config ~/.ssh/config