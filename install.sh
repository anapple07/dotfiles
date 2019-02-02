#!/bin/sh

if [ ! -e ~/.vim/dein/repos/github.com/Shougo/dein.vim ]; then
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim
fi

wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

ln -fs $HOME/dotfiles/.vimrc ~/.vimrc
ln -fs $HOME/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc

echo 'Setup End'
