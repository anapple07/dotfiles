#!/bin/sh

mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim


wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

ln -s $HOME/dotfiles/.vimrc ~/.vimrc
ln -s $HOME/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc

echo 'Setup End'
