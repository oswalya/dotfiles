if [ -n "$(which terraform)" ] ; then
    complete -C /usr/bin/terraform terraform
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then 
    . $(brew --prefix)/etc/bash_completion
fi