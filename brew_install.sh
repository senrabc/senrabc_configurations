# stuff to install with brew to setup your mac

#install xcode from the app store first (required)

#install xcode commandline tools
xcode-select --install


# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew install wget
brew install wget

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
brew cask install mysqlworkbench

brew update

brew cask update

brew cleanup

brew cask cleanup
