# dotfiles

## Mac

oh-my-zsh を入れて `ZSH_THEME="agnoster"` にしてから実行する。

```
git clone https://github.com/anapple07/dotfiles ~/dotfiles
~/dotfiles/install.zsh brew
exec zsh
```

- `brew` を付けると Brewfile のツールも入れる
- 何度実行しても大丈夫（`~/.zshrc` と `~/.gitconfig` には1行ずつ足すだけ）

## 入るもの

| ファイル | リンク / 読み込み先 |
|---|---|
| config/zsh/myzshrc | `~/.zshrc` の最後で source |
| config/settings/myaliases | myzshrc から source |
| config/git/gitconfig | `~/.gitconfig` の include（git bs / recent, ghq.root） |
| config/git/ignore | `~/.config/git/ignore` |
| config/settings/mytmux.conf | `~/.tmux.conf` |
| config/settings/myvimrc | `~/.vimrc` |
| config/nvim/init.vim | `~/.config/nvim/init.vim` |

## dotfiles に入れないもの（PC ごと）

- `~/.aliases_local` : この PC だけの alias
- `~/.gitconfig` の `[user]`
- `.envrc`（Claude のアカウントB: `export CLAUDE_CONFIG_DIR="$HOME/.claude-b"`）
