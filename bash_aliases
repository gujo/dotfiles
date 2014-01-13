# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias less='less -r'
alias vp='vagrant provision'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vd='vagrant destroy'
alias vreset='vagrant destroy -f && vagrant up'

if [[ $OSTYPE == darwin* ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)"\
 "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
