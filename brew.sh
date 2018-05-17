#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade --all
# Install `wget` with IRI support
brew install wget --with-iri





######################## Install oh-my-zsh ##################
brew install zsh zsh-completions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

######################## Install Node #######################
brew install node

######################## Install Python #####################
brew install python
brew install python3

######################## Install Vim ########################
brew install vim --override-system-vi

######################## Install Git ########################
brew install git
brew install git-lfs

######################## Install MySQL ######################
brew install mysql

######################## Core casks #########################
brew cask install --appdir="/Applications" java

######################## Dev tools ##########################
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" intellij-idea-ce
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" mamp
brew cask install --appdir="/Applications" mysqlworkbench
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant

######################## Misc casks #########################
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
# brew cask install --appdir="/Applications" dropbox
# brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" go2shell
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" 1clipboard
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" spotify


######################## Install Android ####################
# brew cask install --appdir="/Applications" android-studio
# brew install android-sdk


######################## Install Docker #####################
######################## (requires virtualbox) ############## 
# brew install docker
# brew install boot2docker






#############################################################
# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install homebrew/x11/xpdf
# brew install xz

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
#############################################################

brew cleanup
