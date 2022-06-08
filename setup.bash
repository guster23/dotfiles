#!/bin/bash
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
#ln -s ${BASEDIR}/vimrc ~/.vimrc
#ln -s ${BASEDIR}/vim/ ~/.vim

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc

# git
#if [[ $OSTYPE == 'darwin'* ]];
#then
#    ln -s ${BASEDIR}/mac-gitignore ~/.gitconfig
#else
#    ln -s ${BASEDIR}/linux-gitignore ~/.gitconfig
#fi

exec /bin/zsh
updatePlugings