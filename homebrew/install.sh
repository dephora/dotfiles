#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

###############################################################################
# HOMEBREW NATIVE                                                             #
###############################################################################

brew tap Goles/battery
brew update
brew upgrade

apps=(
  ack
  bats
  battery
  coreutils
  diff-so-fancy
  dockutil
  fasd
  git
  git-extras
  gnu-sed --with-default-names
  grc
  grep --with-default-names
  hub
  httpie
  imagemagick
  jq
  mackup
  mas
  openssl
  pandoc
  peco
  psgrep
  readline
  roundup
  shellcheck
  ssh-copy-id
  tree
  unar
  wget
  wifi-password
  yarn
  youtube-dl
)

brew install "${apps[@]}"

###############################################################################
# END HOMEBREW NATIVE                                                         #
###############################################################################



###############################################################################
# CASK                                                                        #
###############################################################################

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

cask=(
  caffeine
  charles
  cheatsheet
  cyberduck
  dash
  font-fira-code
  iterm2
  lingo
  paw
  postgres
  postico
  sketch
  slack
  sourcetree
  visual-studio-code
  xmind  
  firefox
  google-chrome
  google-chrome-canary
  opera
  appcleaner
  calibre
  discord
  dropbox
  glimmerblocker
  hammerspoon
  macdown
  skim
  spectacle
  spotify
  vox
  font-source-code-pro
  font-source-sans-pro
  font-source-serif-pro
)

brew cask install "${cask[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi

###############################################################################
# END CASK                                                                    #
###############################################################################



###############################################################################
# MAS                                                                         #
###############################################################################

mas=(
  824171161     # Affinity Designer
  641027709     # Color Picker
  552383089     # Dashlane
  1127253508    # DrUnarchiver
  525742250     # JPEGmini Lite
  409183694     # Keynote
  526298438     # Lightshot Screenshot
  784801555     # Microsoft OneNote 
  409203825     # Numbers 
  409201541     # Pages 
  425955336     # Skitch
  803453959     # Slack
  1176895641    # Spark
  1147396723    # WhatsApp
  410628904     # Wunderlist
  497799835     # Xcode 
)

mas install "${mas[@]}"

###############################################################################
# END MAS                                                                     #
###############################################################################


exit 0
