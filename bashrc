source /usr/local/etc/bash_completion.d/password-store

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source /usr/local/etc/bash_completion.d/password-store
#alias ls='ls -h --color=auto'


RESET="\[$(tput sgr0)\]"
export PYTHONPATH=/Users/cpb/code/vivo-pump

#\w show full path \W show just directory
export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\e[30;0m\]\W\\ ${RESET} "
#export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\033[0;31m\]\w\$ \[\e[32m\]\u\[\e[m\]"
#export PS1="(${CYAN}\@${NO_COLOR})(${PURPLE}\u${NO_COLOR}@${GREEN}\h${NO_COLOR}):${YELLOW}\W${NO_COLOR}"

#color LS output

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

#########
# Aliases
#########

alias ahelp="cat ~/.bashrc | grep 'alias' "
alias ll="ls -lhA"
alias gs="git status"
alias gr="git remote -v"
alias gbr="git branch -r"
alias myip="curl http://ipecho.net/plain; echo"

#no worky on mac
#alias ps="ps auxf"

#keep the bash history for a long time
export HISTCONTROL=ignoredups
export HISTSIZE=99999999
export HISTFILESIZE=99999999

fortune
