# Core
alias cls='clear' # Good 'ol Clear Screen command
alias rr="rm -rf"
alias pk="kill -9 " # kill by PID


# Dirs
alias docs="~/Documents"
alias dots="~/.dotfiles"
alias dl="~/Downloads"
alias p="~/Projects"
alias pelx="~/Projects/elixir"
alias pelm="~/Projects/elm"
alias pjs="~/Projects/javascript"
alias cyto="~/Projects/cyto"
alias work="~/Work"


# Apps
alias c="code ."
alias al="vi ~/.dotfiles/prezto/aliases.zsh"


# Ember
alias eg="ember g "
alias egr="ember g route"
alias egc="ember g component"


# Elixir / Phoenix
alias mps="mix phx.server"


# npm
alias ni="npm install"
alias nu="npm uninstall"
alias nup="npm update"
alias nri="rm -r node_modules && npm install"
alias ncd="npm-check -su"


# Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"


# Request using GET, POST, etc. method
for METHOD in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$METHOD"="lwp-request -m '$METHOD'"
done
unset METHOD


# Miscellaneous

alias vdots="code ~/.dotfiles"
alias hosts="sudo $EDITOR /etc/hosts"
alias his="historie"
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"