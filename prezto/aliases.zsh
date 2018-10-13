# CORE ----------------------------------------------------------------------
alias c='clear' # clear screen
alias rr="rm -rf" # recursive delete
alias pk="kill -9 " # kill by PID
alias t="touch"




# DIRS ----------------------------------------------------------------------

## Core
alias ...="../.."
alias ....="../../.."
alias dots="~/.dotfiles"
alias docs="~/Documents"
alias dl="~/Downloads"
alias work="~/Documents/Work/cyto"
alias music="~/Music"
alias of="open ."
alias shots="/Users/matt/Documents/Screenshots"

## Code -- Base
alias co="~/Code"
alias coe="cd ~/Code/Elixir"
alias cojs="cd ~/Code/Javascript"
alias cor="cd ~/Code/Rust"
alias cov="cd ~/Code/Vue"

## Code -- Apps
alias aelx="~/Code/Elixir/apps"
alias ajs="~/Code/JavaScript/apps"
alias arust="~/Code/Rust/apps"
alias avue="~/Code/Vue/apps"

### Code -- Books
alias belx="~/Code/Elixir/books"
alias bjs="~/Code/JavaScript/books"
alias brust="~/Code/Rust/books"
alias bvue="~/Code/Vue/books"

## Code -- Courses
alias celx="~/Code/Elixir/courses"
alias cjs="~/Code/JavaScript/courses"
alias crust="~/Code/Rust/courses"
alias cvue="~/Code/Vue/courses"

## Code -- Demos
alias delx="~/Code/Elixir/demos"
alias djs="~/Code/JavaScript/demos"
alias drust="~/Code/Rust/demos"
alias dvue="~/Code/Vue/demos"

## Code -- Projects
alias pelx="~/Code/Elixir/projects/current"
alias pjs="~/Code/JavaScript/projects/current"
alias pvue="~/Code/Vue/projects/current"
alias prust="~/Code/Rust/projects/current"

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



## Ruby
alias rvmlatest="rvm get stable --autolibs=enable"



## Rust
alias rc="rustc "
alias rus="rustup show"
alias rusp="rustup self update"
alias rup="rustup update"
alias cn="cargo new"
alias cnb="cargo new --bin "
alias cr="cargo run"
alias cb="cargo build"
alias cch="cargo check"
alias cbr="cargo build --release"
alias cdo="cargo doc --open"
alias ct="cargo test"
alias ctn="cargo test -- --nocapture"
alias ct1="cargo test -- --test-threads=1"
alias ctn1="cargo test -- --test-threads=1 --nocapture"
alias cti="cargo test -- --ignored"
alias ctt="cargo test --test "

### Rust -- Web Assembly 
alias cnn="cargo +nightly new "
alias ctw="cargo +nightly build --target wasm32-unknown-unknown"
alias wbg="wasm-bindgen"
### Rust -- Web Assembly -- wasm-pack
alias cgw="cargo generate --git https://github.com/rustwasm/wasm-pack-template"
alias wpb="wasm-pack build"
alias waw="npm init wasm-app www"
### Rust - Web Assembly -- Templates
alias rwp="npm init rust-webpack"



## Vue
alias vc="vue create "
alias vs="vue serve"
alias vb="vue build "
alias vui="vue ui"
# alias vgql="yarn add vue-apollo graphql apollo-client apollo-link apollo-link-http apollo-link-context apollo-cache-inmemory graphql-tag"
# alias vap="yarn add eslint-plugin-prettier eslint-config-prettier prettier --dev"

### Vue --  Nuxt
alias nuxtinit="yarn add babel-eslint eslint eslint-config-prettier eslint-loader eslint-plugin-vue eslint-plugin-prettier prettier --dev"
alias nc="create-nuxt-app "

### Vue -- Vue Enterprise Boiler
alias ydo="yarn dev --open"
alias yde2="yarn dev:e2e"
alias ync="yarn new component "
alias ynv="yarn new view "
alias ynl="yarn new layout "
alias ynm="yarn new module "
alias ynu="yarn new util "
alias yne="yarn new e2e "




# APPS ----------------------------------------------------------------------

## Core
alias v="code-insiders ."
#alias v="code ."



## Heroku
alias hc="heroku create"
alias ho="heroku open"
alias hssh="ssh -v git@heroku.com"
alias gph="git push heroku"



## Node
alias n="node "
alias ndm="nodemon "

### Node -- Debugging
alias ndbg="node --inspect --inspect-brk "
alias ndmdbg="nodemon --inspect --inspect-brk "
alias debugjest="node --inspect --inspect-brk node_modules/jest/bin/jest.js --config .jestrc.json"
alias debugjestb="node --inspect --inspect-brk node_modules/jest/bin/jest.js"



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

### NPM -- Packages
alias npr="npm install prettier --dev --exact"
alias nweb="npm install --save-dev  webpack webpack-dev-server webpack-cli"
alias esinit="./node_modules/.bin/eslint --init"
alias mocha="./node_modules/mocha/bin mocha "



## Mongo
alias mong="mongod --dbpath /usr/local/var/mongodb "
alias mongsh="mongo --host 127.0.0.1:27017 "



## Yarn
alias yst="yarn start"
alias yd="yarn dev"
alias ys="yarn serve"
alias yl="yarn lint"
alias ylf="yarn lint:fix"
alias yun="yarn unit"
alias yun="yarn test"
alias ycc="yarn cache clean"
alias yupi="yarn upgrade-interactive"
alias yup="brew upgrade yarn --without-node"



## Webpack
alias mwjs="mkdir dist && mkdir src && touch dist/index.html && touch src/index.js && touch README.md && touch webpack.config.js" 




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




# MISC ----------------------------------------------------------------------
alias al="vi $ZSH/prezto/aliases.zsh"
alias sshgen="ssh-keygen -t rsa -b 4096 -C "
alias sshagent="eval '$(ssh-agent -s)'"
alias ssadd="ssh-add -K ~/.ssh/id_rsa"
alias spoons="vi $ZSH/etc/hammerspoon/readme.md"
alias hs="http-server"
alias vdots="code-insiders $ZSH"
alias hosts="sudo $EDITOR /etc/hosts"
alias cpssh="pbcopy < ~/.ssh/id_rsa.pub"
alias his="history"
alias quit="exit"
alias week="date +%V"
alias speedtest="wget -O /Code/null http://speed.transip.nl/100mb.bin"
alias ymp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "
alias scrape="~/Code/Libs/SoundScrape/soundscrape/soundscrape.py "
alias pwzip="zip -er "
alias cdel="cd /Volumes/Elements"
alias setss="defaults write com.apple.screencapture location "
# alias scrape="~/Library/Python/2.7/lib/python/site-packages/soundscrape/soundscrape.py "
