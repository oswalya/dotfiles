if [ -n "$(which terraform)" ] ; then
    complete -C $(brew --prefix)/bin/terraform terraform
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then 
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
    . $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi

if [ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]; then
    . $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
fi
