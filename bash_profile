#.bash_profile
# some useful profile settings

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

#for ruby
eval "$(rbenv init -)"

#get my aliases
source ~/.bashrc
