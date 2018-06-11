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

# brew tap Goles/battery
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
  ffmpeg
  git
  git-extras
  grc
  htop
  httpie
  hub
  imagemagick
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
  vips
  wget
  wifi-password
  youtube-dl
)

brew install "${apps[@]}"

brew install gnu-sed --with-default-names
brew install grep --with-default-names
brew install yarn --without-node

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
  graphql-playground
  # iterm2
  # paw
  postgres
  postico
  postman
  prepros
  sourcetree
  sqlitestudio
  visual-studio-code
  # Design -------------------------------
  lingo
  figma
  # sketch
  # sketchpacks
  # sketch-toolbox
  # Fonts --------------------------------
  fontbase
  font-dosis
  font-fira-code
  font-roboto
  font-hasklig
  font-source-code-pro
  font-fontawesome
  # font-source-sans-pro
  # font-source-serif-pro
  # font-raleway # broken last time I tried it
  # font-open-sans # broken last time I tried it
  # Browsers -----------------------------
  firefox
  google-chrome
  # google-chrome-canary # this crashes when installed with cask
  opera
  # Misc ---------------------------------
  1clipboard
  appcleaner
  # beardedspice
  # avast-security # installing from site
  calibre
  # clipgrab
  # clipy
  discord
  dropbox
  hammerspoon
  iina
  macdown
  # mactex
  sensiblesidebuttons
  soundcloud-downloader
  skim
  slack
  # spectacle  # handling with hammerspoon for now
  spotifree
  spotify
  # vox   
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
