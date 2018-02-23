#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export DOTFILES_ROOT=$HOME/.dotfiles

###############################################################################
# HOMEBREW NATIVE                                                             #
###############################################################################

brew tap Goles/battery
brew update
brew upgrade

apps=(
  ack
  bats
  # battery
  coreutils
  diff-so-fancy
  dockutil
  fasd
  git
  git-extras
  grc
  htop
  httpie
  hub
  jq
  mackup
  # mas
  # mps-youtube
  # mpv
  openssl
  pandoc
  peco
  psgrep
  pwgen
  # python
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

brew install imagemagick --with-libtiff
brew install grep --with-default-names
brew install gnu-sed --with-default-names

ln -sfv "$DOTFILES_ROOT/etc/mackup/.mackup.cfg" ~

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
  # Dev -------------------------------
  caffeine
  charles
  cheatsheet
  cyberduck
  dash
  # dbeaver-community
  # iterm2
  paw
  postgres
  postico  
  sourcetree
  sqlitestudio
  visual-studio-code
  # Design -------------------------------
  lingo
  sketch
  sketch-toolbox
  # Fonts --------------------------------
  font-dosis
  font-fira-code
  font-fontawesome
  font-open-sans
  # font-raleway
  font-roboto
  font-source-code-pro
  font-source-sans-pro
  font-source-serif-pro
  # Browsers -----------------------------
  firefox
  google-chrome
  google-chrome-canary
  opera
  # Misc ---------------------------------
  appcleaner
  avast-security
  calibre
  discord
  dropbox
  hammerspoon
  iina
  macdown
  # mactex
  skim
  slack
  spectacle
  spotifree
  spotify
  vox  
  xmind
)

brew cask install "${cask[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_ROOT/etc/hammerspoon/" ~/.hammerspoon; fi

###############################################################################
# END CASK                                                                    #
###############################################################################

exit 0
