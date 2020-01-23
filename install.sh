#!/bin/sh

if [ ! -e ~/.cache/dein/repos/github.com/Shougo/dein.vim ]; then
mkdir -p ~/.cache/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
    ~/.cache/dein/repos/github.com/Shougo/dein.vim
fi

if [ $1 = git ]; then
    wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
    wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
fi

ln -fs $HOME/dotfiles/config/bash/.bashrc ~/.bashrc
ln -fs $HOME/dotfiles/config/bash/.bash_profile ~/.bash_profile
ln -fs $HOME/dotfiles/config/zsh/.zsh_profile ~/.zsh_profile
ln -fs $HOME/dotfiles/config/zsh/.vimrc ~/.vimrc
source ~/.bashrc

echo 'Setup End'
