# dotfiles

## Mac

```
brew install neovim
```

よくわすれる

```
git config --global alias.bs '!BRANCH=`git recent | fzf --no-sort` && git checkout ${BRANCH}'
git config --global alias.recent '!git for-each-ref --sort=-committerdate --format=\"%(refname:short)\" refs/heads/ | head -n 100'
```
