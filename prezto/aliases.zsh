# Core
alias cls='clear' # clear screen
alias rr="rm -rf" # recursive delete
alias pk="kill -9 " # kill by PID


# Dirs
alias docs="~/Documents"
alias dots="~/.dotfiles"
alias dl="~/Downloads"
alias co="~/Code"
alias pr="~/Code/Projects/Current"
alias pelx="~/Code/Projects/Current/elixir"
alias pelm="~/Code/Projects/Current/elm"
alias pem="~/Code/Projects/Current/ember"
alias pjs="~/Code/Projects/Current/javascript"
alias celx="~/Code/Courses/elixir"
alias cem="~/Code/Courses/ember"
alias cjs="~/Code/Courses/javascript"
alias cyto="~/Code/Projects/Current/work/cyto"
alias work="~/Documents/Work/CytoSavvy"
alias courses="~/Code/courses"
alias books="~/Code/books"


# Apps
alias v="code ."


# Elixir / Phoenix
alias mphxs="mix phx.server"


# NPM
alias ni="npm install "
alias nu="npm uninstall "
alias nup="npm update"
alias nri="rm -r node_modules && npm install"
alias ncd="npm-check -su"
alias nt="npm test "
alias mocha=" ./node_modules/mocha/bin/mocha "

# Yarn
alias ya="yarn add "
alias yu="yarn upgrade "
alias yr="yarn remove "
alias yi="yarn install "
alias ypr="yarn add prettier --dev --exact"


# Ember
alias e="ember "
alias egr="ember g route "
alias egc="ember g component "
alias egt="ember g template "
alias edr="ember d route "
alias edc="ember d component "
alias edt="ember d template "
alias ei="ember install "
alias et="ember test "
alias es="ember serve"


# Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"


# Request using GET, POST, etc. method
for METHOD in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$METHOD"="lwp-request -m '$METHOD'"
done
unset METHOD


# Misc
alias al="vi $ZSH/prezto/aliases.zsh"
alias hs="vi $ZSH/etc/hammerspoon/readme.md"
alias vdots="code $ZSH"
alias hosts="sudo $EDITOR /etc/hosts"
alias his="history"
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /Code/null http://speed.transip.nl/100mb.bin"
alias ymp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "
alias scrape="~/Code/Libs/SoundScrape/soundscrape/soundscrape.py "
alias pwzip='zip -er '
alias cdel='cd /Volumes/Elements'
# alias scrape="~/Library/Python/2.7/lib/python/site-packages/soundscrape/soundscrape.py "
