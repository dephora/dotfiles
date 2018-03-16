# Josh's take on holman's dotfiles

This takes Zach Holman's [excellent dotfiles](https://github.com/holman/dotfiles)
and adds some of my own niceties, including prezto and fish-style autocompletion.

## Matt's mods

- **Homebrew:** Added several brew and cask apps.
- **OS Defaults:** Many modifications.
- **ZSH / Prezto:** Added aliases & functions.
- **iTerm2:** Include custom prefs / config.
- **Other:** Include hammerspoon with configs and mackup in *etc*.
- **TODO**
  - Make RVM work.

## Install

### Update OS & Install XCode Command Line Tools

```sh
sudo softwareupdate -i -a
xcode-select --install
```

### Install [iTerm2](https://iterm2.com)

- This is done prior to running `script/bootstrap` to save steps later.

### Clone with Git and run scripts

```sh
git clone https://github.com/dephora/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
script/install
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

### Set default shell to zsh (after restarting iTerm)

```sh
chsh -s /bin/zsh
```

### Install node with nvm (after restarting iTerm)

[zsh-nvm](https://github.com/lukechilds/zsh-nvm#manually)

zsh-nvm is included and will automatically install upon shell restart / new tab.
This does not install node, to do so run the command below.

```sh
nvm install node
```

### Update dock with dockutil (optional)

```sh
macos/dock
```

### Restart Machine

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## What's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## Thanks

I forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.
