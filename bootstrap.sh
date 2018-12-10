#!/bin/bash
for item in $(ls -F -A -1 ~/.dotfiles/ | grep -e "^\." | grep '/' | grep -v 'git')
do
    ln -v -s ~/.dotfiles/${item} ~
done

for item in $(ls -F -A -1 ~/.dotfiles/ | grep -e "^\." | grep -v '/' | grep -v 'gitmodules' | grep -v 'gitignore')
do
    ln -v -s ~/.dotfiles/${item} ~
done

mkdir -p ~/.ssh
cp -a -f ~/.dotfiles/ssh-config ~/.ssh/config
chmod 0600 ~/.ssh/config

~/.fonts/install.sh