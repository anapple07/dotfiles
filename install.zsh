#!/bin/zsh

DOT=$HOME/dotfiles

if [[ ! -e ~/.cache/dein/repos/github.com/Shougo/dein.vim ]]; then
mkdir -p ~/.cache/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \
    ~/.cache/dein/repos/github.com/Shougo/dein.vim
fi

if [[ $1 = brew ]]; then
    brew bundle --file=$DOT/Brewfile
fi

# リンクは必ず絶対パスで張る
[[ -d ~/.config/nvim/ ]] || mkdir -p ~/.config/nvim
ln -fs $DOT/config/nvim/init.vim ~/.config/nvim/init.vim
ln -fs $DOT/config/settings/myvimrc ~/.vimrc
ln -fs $DOT/config/settings/mytmux.conf ~/.tmux.conf
[[ -d ~/.config/git/ ]] || mkdir -p ~/.config/git
ln -fs $DOT/config/git/ignore ~/.config/git/ignore

# ~/.gitconfig は PC ごとの user 設定を残したいので include で読ませる
git config --global --get-all include.path | grep -qx "$DOT/config/git/gitconfig" \
    || git config --global --add include.path "$DOT/config/git/gitconfig"

# ~/.zshrc は oh-my-zsh が作るので、最後に myzshrc を読む行だけ足す
grep -q 'config/zsh/myzshrc' ~/.zshrc 2>/dev/null \
    || print '\n[ -f ~/dotfiles/config/zsh/myzshrc ] && source ~/dotfiles/config/zsh/myzshrc' >> ~/.zshrc

echo 'Setup End (exec zsh で反映)'
