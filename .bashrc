if [ -e "${HOME}/.bashrc_local" ]; then
  source "${HOME}/.bashrc_local"
fi

#git status
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]\n$(__git_ps1)\[\033[00m\]\$'
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

#xcode入ってる時はもともとあるのを使ってみる
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
	source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
else
	source ~/dotfile/git-prompt.sh
fi

if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
	source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
else
	source ~/dotfile/git-completion.bash
fi

export PATH=/usr/local/bin:$PATH
export PGDATA='/usr/local/var/postgres'
