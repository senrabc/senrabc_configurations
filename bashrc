#########
# .bashrc
# this file contains some bash settings I find useful
# to reload use $ source ~/.bashrc
#########

#########
# PS1 settings for customizing your shell
# see: http://bashrcgenerator.com/
#########
#\w show full path \W show just directory
export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\033[0;31m\]\w\${RESET} "
#export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\033[0;31m\]\w\$ \[\e[32m\]\u\[\e[m\]"
#export PS1="(${CYAN}\@${NO_COLOR})(${PURPLE}\u${NO_COLOR}@${GREEN}\h${NO_COLOR}):${YELLOW}\W${NO_COLOR}"


#########
# Aliases
#########
#alias ls='ls -h --color=auto'
alias ahelp="cat ~/.bashrc | grep 'alias' "
alias ll="ls -lhA"
alias gs="git status"
alias gr="git remote -v"
alias myip="curl http://ipecho.net/plain; echo"
#alias ps="ps auxf"

#no worky on mac
#alias ps="ps auxf"
