# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -F --color=auto'
fi

if [ -e /usr/bin/ag ] ; then
    alias ag="ag --color-match='1;31' --color-line='1;32' --color-path='35'"
fi

# aliases
alias watch='watch '
alias ll='ls -l'
alias la='ls -la'
alias lla='ls -la'
alias cp='cp -vr'
alias mv='mv -v'
alias rm='rm -v'
alias du='du -ch'
alias grep="grep --color=auto"
alias clip='xclip -selection clipboard'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias hg='history | grep -i'
alias diff="diff -u"
alias utop='top -u "$USER"'
alias g='grep'
alias mkdir='mkdir -p'
alias df='df -h'
alias ducks='du -cksh * | sort -rh | head -11' # Lists folders and files sizes in the current folder
alias abs='readlink -f' #shows the absolute path
alias sx="screen -x"
alias cx="chmod +x"
alias il='ip addr | grep inet | sed -e "s#\s*inet \([0-9.]*\).*\ \([a-z0-9]*\)#\2 \1#g"'
alias txt='vim -c "set wrap linebreak nolist nonumber noshowmode noruler laststatus=0 noshowcmd"' # for reading texts
alias cl='crontab -l'
alias ce='crontab -e'
alias gu='git pull && git submodule update --init --recursive'
alias g1="git diff HEAD~1"
alias -- -='cd -'
alias gc="gcloud"
alias kc="kubectl"
alias mdl="mdl -r '~MD013'"
alias grep='ggrep'
alias ghpr="python3 /Users/jessen-noak/workspace/scripts/open_prs.py oswalya $(cat ~/.github-token)"

#colourise
if [ -e /usr/bin/grc ]
then
	alias grc='grc -es'
	alias ping='grc ping'
	alias traceroute='grc /usr/sbin/traceroute'
	alias netstat='grc netstat'
	alias diffc='grc diff -u'
	alias make='grc make'
	function log () {
		grc cat "$1" | less
	}
fi

#use htop instead of top
if [ -e /usr/bin/htop ]
then
	alias top='htop'
fi


