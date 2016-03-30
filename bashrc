
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
export PS1="\[\033[0;32m\]✔ \[\033[0;33m\]\w\[\033[0;0m\] \n\[\033[0;37m\]$(date +%H:%M)\[\033[0;0m\] $"
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

#alias: help me see what all the aliases were that I made
alias ahelp="cat ~/.bashrc | grep 'alias' "

alias bh="cat ~/.bash_history"

#alias: change directory up one
alias c="cd .."

#alias: edit .bashrc
alias ebr="nano ~/.bashrc"

#alias: Show me the staTUS!
alias gs="git status"

#alias: Show me all the remotes
alias gr="git remote -v"

#alias: show me all the remote branches
alias gbr="git branch -r"

#alias: fetch all the remote tags and then list them
alias gft="git fetch --tags && git tag"

#alias: If we don't learn from history we are doomed to retype it! -senrabc
alias hh="history"

#alias: you can't hide from my, silly files
alias ll="ls -lhA"

#alias: love this one, show me what the interwebs think I am
alias myip="curl http://ipecho.net/plain; echo"

#alias: Load up the old basher
alias sbr="source ~/.bashrc"

#alias: this may be much, but I got tired of syncing and commiting my basrc files local and on gh by hand
alias ubrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && cp ~/.bashrc ~/code/senrabc.github.com/senrabc_configurations/bashrc && source ~/.bashrc && git add ~/code/senrabc.github.com/senrabc_configurations/bashrc && git commit -m 'add to bashrc. This is an alias doing an auto commit to keep local and remote bashrc insync' && git push"

#alias: whats up with my vagrant
alias vs="vagrant status"

#alias: again I hate to type
alias vup="vagrant up"

#alias: this one rocks, shows the state of all yoru vagrants. I'm not the only one to leave a vagrant on and forget.
alias vgs="vagrant global-status"


#keep the bash history for a long time
export HISTCONTROL=ignoredups
export HISTSIZE=99999999
export HISTFILESIZE=99999999

fortune
