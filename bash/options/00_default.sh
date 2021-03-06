#vim the one and only
export EDITOR=/usr/bin/vim

# colorful manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export LESS=' -iR'
export NVIM_TUI_ENABLE_TRUE_COLOR='1'

# history search with the arrow keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOC":forward-word'
bind '"\eOD":backward-word'
bind 'set input-meta on'
bind 'set output-meta on'
bind 'set convert-meta off'
bind 'set completion-ignore-case on'

export LANG=en_US.UTF-8

# setup go path
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
# always use the new go modules
export "GO111MODULE=on"

# setup ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
