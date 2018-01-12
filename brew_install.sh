# stuff to install with brew to setup your mac

#install xcode from the app store first (required)

#install xcode commandline tools
xcode-select --install


# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew install wget
brew install wget

# ref: thx to : https://danielmiessler.com/study/tmux/
# https://danielmiessler.com/blog/first-10-things-new-mac/
# get gnu utils instead of OSX ones

#  run tap to check for dulicates
brew tap homebrew/dupes

brew install findutils --default-names
brew install gnu-sed --default-names
brew install gnu-tar --default-names
brew install gnu-which --default-names
brew install gnutls --default-names
brew install grep --default-names
brew install coreutils
brew install binutils
brew install diffutils
brew install gzip
brew install watch
brew install tmux 
brew install wget
brew install nmap
brew install gpg
brew install htop





#atom text editor rocks 
brew cask install atom

# I like virtual machines
brew cask install vagrant

# I like running virtual machines more
brew cask install virtualbox

# setup your bash prompt to give you git info
brew install bash-git-prompt

# brew maint.
# helps free up space and solves most errors

# get pycharm community edition
brew install Caskroom/versions/pycharm-ce

# get mysqlworkbench
#brew cask install mysqlworkbench

brew install mysql --client-only --universal


brew update

brew cask update

brew cleanup

brew cask cleanup
