# CORE ----------------------------------------------------------------------
alias c='clear' # clear screen
alias rr="rm -rf" # recursive delete
alias pk="kill -9 " # kill by PID
alias t="touch"
# alias l="exa "
alias ls="exa "
alias lst="exa -T"
alias lt1="exa --tree -level=1"
alias lt2="exa --tree --level=2"
alias lg="exa --long --git"

alias ll="exa --header --long --list-dirs"


# DIRS ----------------------------------------------------------------------

## Core
alias ...="../.."
alias ....="../../.."
alias ulb="cd /usr/local/bin"
alias of="open ."
alias dots="~/.dotfiles"
alias docs="~/Documents"
alias dl="~/Downloads"
alias work="~/Documents/Work/cyto"
alias music="~/Music"
alias shots="/Users/matt/Documents/Screenshots"

## Code -- Base
alias co="~/Code"
alias coe="cd ~/Code/Elixir"
alias cojs="cd ~/Code/Javascript"
alias cor="cd ~/Code/React"
alias core="cd ~/Code/Reason"
alias corust="cd ~/Code/Rust"
alias cov="cd ~/Code/Vue"


## Code -- Projects --- Specific
alias abt="~/Code/JavaScript/projects/current/audiobat"

## Code -- Cyto
alias cyto="~/Code/Work/cyto"
alias c4="~/Code/Work/cyto-v4"




# LANGS ---------------------------------------------------------------------

## Elixir / Phoenix
alias ism="iex -S mix"
alias mps="mix phx.server"
alias mpn="mix phx.new "
alias mdg="mix deps.get"
alias mem="mix ecto.migrate"
alias megm="mix ecto.gen.migration "



## Python
alias py="python3 "


## Reason
alias rein="bsb -init first-project -theme basic-reason"
# refmt src/Functions.re > src/ReformattedFunctions.re

# bsc -bs-re-out \
  # lib/bs/src/Annotations-Functions.cmi  > \
  # src/Annotations.rei

# npm run start
# npm run build
# node src/...

## Ruby
alias rvmlatest="rvm get stable --autolibs=enable"



## Rust
alias rc="rustc "
# alias rus="rustup show"
# alias rusp="rustup self update"
# alias rup="rustup update"
# alias cn="cargo new"
# alias cnb="cargo new --bin "
# alias cr="cargo run"
# alias cb="cargo build"
# alias cch="cargo check"
# alias cbr="cargo build --release"
# alias cdo="cargo doc --open"
# alias ct="cargo test"
# alias ctn="cargo test -- --nocapture"
# alias ct1="cargo test -- --test-threads=1"
# alias ctn1="cargo test -- --test-threads=1 --nocapture"
# alias cti="cargo test -- --ignored"
# alias ctt="cargo test --test "

### Rust -- Web Assembly 
alias cnn="cargo +nightly new "
# alias ctw="cargo +nightly build --target wasm32-unknown-unknown"
# alias wbg="wasm-bindgen"
### Rust -- Web Assembly -- wasm-pack
alias cgw="cargo generate --git https://github.com/rustwasm/wasm-pack-template"
alias wpb="wasm-pack build"
alias waw="npm init wasm-app www"
### Rust - Web Assembly -- Templates
alias rwp="npm init rust-webpack"





# APPS ----------------------------------------------------------------------

## Core
alias v="code-insiders ."
#alias v="code ."



## Heroku
# alias hc="heroku create"
# alias ho="heroku open"
# alias hssh="ssh -v git@heroku.com"
# alias gph="git push heroku"



## Node
alias n="node "
alias ndm="nodemon "

### Node -- Debugging
# alias ndbg="node --inspect --inspect-brk "
# alias ndmdbg="nodemon --inspect --inspect-brk "
# alias debugjest="node --inspect --inspect-brk node_modules/jest/bin/jest.js --config .jestrc.json"
# alias debugjestb="node --inspect --inspect-brk node_modules/jest/bin/jest.js"



## NPM
alias rrnm="find . -name "node_modules" -exec rm -rf '{}' +"
alias ni="npm install "
alias nid="npm install --save-dev "
alias nu="npm uninstall "
alias nri="rm -r node_modules && npm install"
alias nb="npm run build"
alias ns="npm run serve"
alias nst="npm run start"
alias nd="npm run dev"
alias nl="npm run lint"
alias nlf="npm run lint:fix"
alias nun="npm run unit"
alias nt="npm run test "
alias ntw="npm run test-watch"
alias nup="npm update"
alias ncd="npm-check -su"
alias ncc="npm cache clean"
alias npxjsn="npx json-server db.json --watch"
# nsp check # audit package.json
# snyk test # audit node_modules directory

### NPM -- Packages
alias npr="npm install prettier --dev --exact"
alias nweb="npm install --save-dev  webpack webpack-dev-server webpack-cli"
alias esinit="./node_modules/.bin/eslint --init"
# alias mocha="./node_modules/mocha/bin mocha "



## Mongo
#alias mong="mongod --dbpath /usr/local/var/mongodb "
alias mong="mongod --dbpath ~/mongo-data"
alias mongsh="mongo --host 127.0.0.1:27017 "



## Yarn
alias yst="yarn start"
# alias yd="yarn dev"
# alias ys="yarn serve"
# alias yl="yarn lint"
# alias ylf="yarn lint:fix"
# alias yun="yarn unit"
# alias yun="yarn test"
# alias ycc="yarn cache clean"
# alias yupi="yarn upgrade-interactive"
# alias yup="brew upgrade yarn --without-node"



## Webpack
# alias mwjs="mkdir dist && mkdir src && touch dist/index.html && touch src/index.js && touch README.md && touch webpack.config.js" 




# NETWORK -------------------------------------------------------------------

## Core
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"



## HTTP

### HTTP -- Request using GET, POST, etc. method
for METHOD in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$METHOD"="lwp-request -m '$METHOD'"
done
unset METHOD




# IMAGES --------------------------------------------------------------------

alias ca="convert -append"
alias capng="convert -append *.png out.png"
alias cajpg="convert -append *.jpg out.jpg"




# MISC ----------------------------------------------------------------------
alias al="vi $ZSH/prezto/aliases.zsh"
alias vdots="code-insiders $ZSH"
alias sshgen="ssh-keygen -t rsa -b 4096 -C "
# alias sshagent="eval '$(ssh-agent -s)'"
# alias sshl = "ssh-add -l"
# alias ssadd="ssh-add -K ~/.ssh/id_rsa"
# alias sshcp="pbcopy < ~/.ssh/id_rsa.pub"
alias spoons="vi $ZSH/etc/hammerspoon/readme.md"
alias hs="http-server"
alias hosts="sudo $EDITOR /etc/hosts"
alias his="history"
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /Code/null http://speed.transip.nl/100mb.bin"
alias ymp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "
# alias scrape="~/Code/Libs/SoundScrape/soundscrape/soundscrape.py "
alias pwzip="zip -er "
alias cdel="cd /Volumes/Elements"
alias setss="defaults write com.apple.screencapture location "
# alias scrape="~/Library/Python/2.7/lib/python/site-packages/soundscrape/soundscrape.py "
