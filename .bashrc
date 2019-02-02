export PGDATA='/usr/local/var/postgres'

#git settings
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]\n$(__git_ps1)\[\033[00m\]\$'

#source ~/dotfile/git-prompt.sh
#source ~/dotfile/git-completion.bash

#xcode入ってる時はこっちがいいかも
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
