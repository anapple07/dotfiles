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

set guifont=Andale\ Mono:h14

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor


syntax on
set hlsearch!

set t_Co=256
set termguicolors
set background=dark

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

noremap ; :
noremap : ;

noremap <buffer> ,ptv <Esc>:'<,'>! perltidy -pbp<CR>
noremap <buffer> ,pt :%! perltidy<CR>

"#####dein.vimの設定#####
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/dein'))
    call dein#begin(expand('~/.vim/dein'))

    " プラグインリストを収めたTOMLファイル
    let g:dein_dir = expand('~/.config/nvim')
    let s:toml = g:dein_dir . '/dein.toml'
    " let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'

    " TOMLファイルにpluginを記述
    call dein#load_toml(s:toml, {'lazy': 0})
    " call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" 未インストールを確認
if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
