if filereadable('~/.local_vimrc')
  source ~/.local_vimrc
endif

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/dotfiles/config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/dotfiles/config/nvim/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()

endif

" 未インストールを確認
if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable
