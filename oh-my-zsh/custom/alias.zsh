# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias less='less -r'

alias watch='watch '

alias e='emacs'

alias c='cd'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias ....='cd .. && cd .. && cd ..'

alias vp='vagrant provision'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vd='vagrant destroy'
alias vreset='vagrant destroy -f && vagrant up'

alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias gd='git diff --color'
alias gl='git log'
alias gb='bit branch'
alias gpull='git pull'

alias k='kubectl'
alias kd='kubectl describe'
alias kg='kubectl get'
alias g='gcloud'

alias -g G='|grep'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

if [[ $OSTYPE == darwin* ]]; then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)"\
 "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias kubeon='export KUBE_PS1_ENABLE=1'
alias kubeoff='unset KUBE_PS1_ENABLE'
alias kon='kubeon'
alias koff='kubeoff'
