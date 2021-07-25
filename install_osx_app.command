#! /bin/bash

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install --appdir="/Applications" cakebrew
brew cleanup

# Apps List: 

apps=(

  #basic
  alfred
  firefox
  vlc

  #Tools
  notion
  slack
  discord
  figma

  #code
  sourcetree
  visual-studio-code
  fork
  iterm2
 
  #download
  transmit
  spotify

)

# Install apps to /Applications
# Default is /Users/$user/Applications

echo "installing some apps for you..."
brew cask install --appdir="/Applications" ${apps[@]}


brew cleanup

# link Alfred
brew cask alfred link

echo "It's done!"
