/usr/local/bin
export EDITOR="$HOME/bin/mate -w"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/git-completion.bash
 
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
alias gst='git st'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

alias ll='ls -lG'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
