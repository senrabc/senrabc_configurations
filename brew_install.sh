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

# brew maint.
# helps free up space and solves most errors

brew update

brew cask update

brew cleanup

brew cask cleanup
