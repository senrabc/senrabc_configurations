# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

#########
# Aliases
#########

# put them in alphabetical order

# help me see what all the aliases were that I made
alias ahelp="cat ~/.bashrc | grep 'alias' "

alias bh="cat ~/.bash_history"

# change directory up one
alias c="cd .."

#edit journal

alias ejr="vim ~/code/senrabc.gitlab.com/journal/journal.txt"
#update journal entry / sync
alias ujr=" cd /home/senrabc/code/senrabc.gitlab.com/journal && git add ~/code/senrabc.gitlab.com/journal/journal.txt && git commit -m 'add to journal. This is an alias doing an auto commit to keep local and remote journal.txt in sync' && git push"

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

alias gb="git branch -v"

# git check, check all repos for changes

alias gc="cd ~/code && ./git-check.sh"

# fetch all the remote tags and then list them
alias gft="git fetch --tags && git tag"

#show the pretty git log with grpah lines for commits
alias gpl="git log --graph --abbrev-commit --decorate --date=relative --all"


#colorize grep

alias grep='grep --color'

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
alias ubrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && git pull && cp ~/.bashrc ~/code/senrabc.github.com/senrabc_configurations/bashrc && source ~/.bashrc && git add ~/code/senrabc.github.com/senrabc_configurations/bashrc && git commit -m 'add to bashrc. This is an alias doing an auto commit to keep local and remote bashrc in sync' && git push"

# update vim rc and commit it.
alias uvrc="cd ~/code/senrabc.github.com/senrabc_configurations/ && cp ~/.vimrc ~/code/senrabc.github.com/senrabc_configurations/vimrc && git add ~/code/senrabc.github.com/senrabc_configurations/vimrc && git commit -m 'add to vimrc. This is an alias doing an auto commit to keep local and remote vimrc in sync' && git push"


# whats up with my vagrant
alias vs="vagrant status"

#alias: again I hate to type
alias vup="vagrant up"

#alias: this one rocks, shows the state of all yoru vagrants. I'm not the only one to leave a vagrant on and forget.
alias vgs="vagrant global-status"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# gpg conf options
GPG_TTY=$(tty)
export GPG_TTY
