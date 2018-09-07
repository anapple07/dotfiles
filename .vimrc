":call dein#install() でinstallする
if &compatible
      set nocompatible
      endif
      set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

      call dein#begin(expand('~/.vim/dein'))

      call dein#add('Shougo/dein.vim')
      call dein#add('Shougo/vimproc.vim', {'build': 'make'})
      call dein#add('Shougo/unite.vim')
      call dein#add('tomasr/molokai')

      call dein#add('Shougo/neocomplete.vim')
      call dein#add('Shougo/neomru.vim')
      call dein#add('Shougo/neosnippet')
      call dein#end()

set number
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list
set listchars=tab:»-,trail:-
set incsearch
set autoindent
set smartindent
set statusline+=%<%F

set laststatus=2
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y

syntax on
set hlsearch!

set t_Co=256

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

noremap ; :
noremap : ;

noremap <buffer> ,ptv <Esc>:'<,'>! perltidy -pbp<CR>
noremap <buffer> ,pt :%! perltidy<CR>
