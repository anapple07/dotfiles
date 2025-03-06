#!/bin/zsh

if [[ ! -e ~/.cache/dein/repos/github.com/Shougo/dein.vim ]]; then
mkdir -p ~/.cache/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
    ~/.cache/dein/repos/github.com/Shougo/dein.vim
fi

if [[ $1 = git ]]; then
    wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
    wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
fi

ln -fs $HOME/dotfiles/config/bash/.bashrc ~/.bashrc
ln -fs $HOME/dotfiles/config/bash/.bash_profile ~/.bash_profile
ln -fs $HOME/dotfiles/config/zsh/.zsh_profile ~/.zsh_profile
[[ -d ~/.config/nvim/ ]] || mkdir -p ~/.config/nvim
ln -fs $HOME/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim

source ~/.zshrc


# 改行変だから後で自分で直す
#echo 'if [ -f "$HOME/.local_zsrc" ]; then\n    source $HOME/.local_zsrc\nfi'　>> ~/.zshrc
#echo 'if [ -e ~/dotfiles/config/settings/myaliases ]; then\n. ~/dotfiles/config/settings/myaliases\nfi'　>> ~/.zshrc

echo 'Setup End'
