set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/local/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

alias vi='nvim'
