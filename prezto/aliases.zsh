# Core
alias cls='clear' # Good 'ol Clear Screen command
alias rr="rm -rf"
alias pk="kill -9 " # kill by PID


# Dirs
alias docs="~/Documents"
alias dots="~/.dotfiles"
alias dl="~/Downloads"
alias p="~/Dev/Projects/Current"
alias pelx="~/Dev/Projects/Current/elixir"
alias pelm="~/Dev/Projects/Current/elm"
alias pjs="~/Dev/Projects/Current/javascript"
alias cyto="~/Dev/Projects/Current/cyto"
alias work="~/Documents/Work"


# Apps
alias c="code ."
alias al="vi ~/.dotfiles/prezto/aliases.zsh"


# Ember
alias e="ember "
alias eg="ember g "
alias egr="ember g route "
alias egc="ember g component "
alias ei="ember install "
alias et="ember test "
alias ed="ember destroy "
alias es="ember server"


# Elixir / Phoenix
alias mps="mix phx.server"


# NPM
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


# Misc
alias vdots="code ~/.dotfiles"
alias hosts="sudo $EDITOR /etc/hosts"
alias his="historie"
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"