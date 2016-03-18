
# get your fonts for shell here
# https://github.com/larsenwork/monoid

source /usr/local/etc/bash_completion.d/password-store

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source /usr/local/etc/bash_completion.d/password-store
#alias ls='ls -h --color=auto'


RESET="\[$(tput sgr0)\]"
export PYTHONPATH=/Users/cpb/code/vivo-pump

#\w show full path \W show just directory
#export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\e[30;0m\]\W\\ ${RESET} "
#export PS1="(\[\033[0;36m\]\@\[\033[0;37m\])(\[\033[0;35m\]\u@\[\033[0;37m]\[\033[0;37m\]):\[\033[0;31m\]\w\$ \[\e[32m\]\u\[\e[m\]"
#export PS1="(${CYAN}\@${NO_COLOR})(${PURPLE}\u${NO_COLOR}@${GREEN}\h${NO_COLOR}):${YELLOW}\W${NO_COLOR}"

 if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
 fi


# color LS output

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

#########
# Aliases
#########

# put them in alphabetical order

alias ahelp="cat ~/.bashrc | grep 'alias' "
alias bh="cat ~/.bash_history"
alias c="cd .."
alias ebr="nano ~/.bashrc"
alias gs="git status"
alias gr="git remote -v"
alias gbr="git branch -r"
alias hh="history"
alias ll="ls -lhA"
alias myip="curl http://ipecho.net/plain; echo"
alias sbr="source ~/.bashrc"
# this may be much, but I got tired of syncing and commiting my basrc files local and on gh by hand
alias ubrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && cp ~/.bashrc ~/code/senrabc.github.com/senrabc_configurations/bashrc && source ~/.bashrc && git add ~/code/senrabc.github.com/senrabc_configurations/bashrc && git commit -m 'add to bashrc. this is an alias doing an auto commit to keep locla and remote bashrc insync' && git push"
alias vs="vagrant status"
alias vup="vagrant up"
alias vgs="vagrant global-status"


#keep the bash history for a long time
export HISTCONTROL=ignoredups
export HISTSIZE=99999999
export HISTFILESIZE=99999999

fortune
