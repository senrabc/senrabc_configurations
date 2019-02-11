# color LS output

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

#grep opts
export GREP_OPTIONS='--color=always' 

#gnu utils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
#########
# Aliases
#########

# put them in alphabetical order

# help me see what all the aliases were that I made
alias ahelp="cat ~/.bashrc | grep 'alias' "

alias bh="cat ~/.bash_history"
alias smin="ssh senrabc@minerva.myftp.org"
# change directory up one
alias c="cd .."

# edit .bashrc
alias ebr="vim ~/.bashrc"

# edit .vimrc
alias evr="vim ~/.vimrc"

#show me all my git alias ( usage git <alias> )
alias ghelp="git la"

# Show me the staTUS!
alias gs="git status"

# Show me all the remotes
alias gr="git remote -v"

# show me all the remote branches
alias gbr="git branch -r"

# git check, check all repos for changes

alias gc="cd ~/code && ./git-check.sh"

# fetch all the remote tags and then list them
alias gft="git fetch --tags && git tag"

# If we don't learn from history we are doomed to retype it! -senrabc
alias hh="history"

#get help on the virutal environment shortcuts
alias hvenv="cat /usr/local/bin/virtualenvwrapper.sh | grep function"
# you can't hide from my, silly files
alias ll="ls -lhA"

# love this one, show me what the interwebs think I am
alias myip="curl http://ipecho.net/plain; echo"

# Load up the old basher
alias sbr="source ~/.bashrc"

# this may be much, but I got tired of syncing and commiting my basrc files local and on gh by hand
alias ubrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && cp ~/.bashrc ~/code/senrabc.github.com/senrabc_configurations/bashrc && source ~/.bashrc && git add ~/code/senrabc.github.com/senrabc_configurations/bashrc && git commit -m 'add to bashrc. This is an alias doing an auto commit to keep local and remote bashrc in sync' && git push"

# update vim rc and commit it.
alias uvrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && cp ~/.vimrc ~/code/senrabc.github.com/senrabc_configurations/vimrc && git add ~/code/senrabc.github.com/senrabc_configurations/vimrc && git commit -m 'add to vimrc. This is an alias doing an auto commit to keep local and remote vimrc in sync' && git push"


# whats up with my vagrant
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
