# Core
alias cls='clear' # clear screen
alias rr="rm -rf" # recursive delete
alias pk="kill -9 " # kill by PID



# Dirs
alias ...="../.."
alias ....="../../.."

alias docs="~/Documents"
alias dots="~/.dotfiles"
alias dl="~/Downloads"
alias co="~/Code"
alias wo="~/Code/work/cyto-v4"
alias work="~/Documents/Work/cyto"
alias music="~/Music"
alias of="open ."


# Code 
### apps
alias aelx="~/Code/Elixir/apps"
alias aem="~/Code/Ember/apps"
alias ajs="~/Code/JavaScript/apps"
alias avue="~/Code/Vue/apps"
alias arust="~/Code/Rust/apps"

### courses
alias celx="~/Code/Elixir/courses"
alias cem="~/Code/Ember/courses"
alias cjs="~/Code/JavaScript/courses"
alias cvue="~/Code/Vue/courses"
alias crust="~/CodeRust/courses"

### demos
alias delx="~/Code/Elixir/demos"
alias dem="~/Code/Ember/demos"
alias djs="~/Code/JavaScript/demos"
alias dvue="~/Code/Vue/demos"
alias drust="~/Code/Rust/demos"

### projects
alias pelx="~/Code/Elixir/projects/current"
alias pem="~/Code/Ember/projects/current"
alias pjs="~/Code/JavaScript/projects/current"
alias pvue="~/Code/Vue/projects/current"
alias prust="~/Code/Rust/projects/current"

### books
alias bjs="~/Code/JavaScript/books"
alias bvue="~/Code/Vue/books"
alias belx="~/Code/Elixir/books"
alias brust="~/Code/Rust/books"

### cyto
alias cyto="~/Code/Work/cyto"
alias cyto3="~/Code/Work/cyto-v3"



# Apps
alias v="code ."
alias mong="mongod --dbpath /usr/local/var/mongodb "
alias mongsh="mongo --host 127.0.0.1:27017 "

# Docker
# alias dcu="docker-compose up"
# alias dockercont="docker exec -t -i autheg_backend_1 /bin/bash"
# alias dsa="docker stop $(docker ps -q)"

# NPM
### native
alias ni="npm install "
alias nid="npm install --save-dev "
alias nu="npm uninstall "
alias nri="rm -r node_modules && npm install"
alias nb="npm run build"
alias ns="npm run serve"
alias nst="npm run  start"
alias nd="npm run dev"
alias nl="npm run lint"
alias nlf="npm run lint:fix"
alias nun="npm run unit"
alias nt="npm run test "
alias nup="npm update"
alias ncd="npm-check -su"
alias ncc="npm cache clean"
### packages
alias npr="npm install prettier --dev --exact"
alias nweb="npm install --save-dev  webpack webpack-dev-server webpack-cli"



# Yarn
### native
alias yi="yarn install "
alias ya="yarn add "
alias yad="yarn add --dev "
alias yr="yarn remove "
alias yu="yarn upgrade "
alias yb="yarn build"
alias ys="yarn serve"
alias yst="yarn start"
alias yd="yarn dev"
alias yl="yarn lint"
alias ylf="yarn lint:fix"
alias yun="yarn unit"
alias yun="yarn test"
alias ycc="yarn cache clean"
alias yupi="yarn upgrade-interactive"
alias yup="brew upgrade yarn --without-node"
### packages
alias ypr="yarn add prettier --dev --exact"
alias yweb="yarn add --save-dev webpack webpack-dev-server webpack-cli"



# Node
alias n="node "
alias ndm="nodemon "
alias debugjest="node --inspect --inspect-brk node_modules/jest/bin/jest.js --config .jestrc.json"
alias debugjestb="node --inspect --inspect-brk node_modules/jest/bin/jest.js"
alias mocha="./node_modules/mocha/bin mocha "
alias rrnm="find . -name "node_modules" -exec rm -rf '{}' +"


# Webpack
alias mwjs="mkdir dist && mkdir src && touch dist/index.html && touch src/index.js && touch README.md && touch webpack.config.js" 



# JS
alias esinit="./node_modules/.bin/eslint --init"



# Vue / Nuxt
alias vc="vue create "
alias vs="vue serve"
alias vgql="ya vue-apollo graphql apollo-client apollo-link apollo-link-http apollo-link-context apollo-cache-inmemory graphql-tag"
alias vap="ya eslint-plugin-prettier eslint-config-prettier prettier --dev"

alias nc="create-nuxt-app "
alias nuxtinit="yarn add babel-eslint eslint eslint-config-prettier eslint-loader eslint-plugin-vue eslint-plugin-prettier prettier --dev"



# Elixir / Phoenix
alias ism="iex -S mix"
alias mps="mix phx.server"
alias mpn="mix phx.new "
alias mdg="mix deps.get"
alias mem="mix ecto.migrate"
alias megm="mix ecto.gen.migration "


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



# Ruby
alias rvmlatest="rvm get stable --autolibs=enable"



# Rust
alias rc="rustc "
alias cnb="cargo new --bin "
alias cr="cargo run"

# Python
alias py="python3 "


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
alias spoons="vi $ZSH/etc/hammerspoon/readme.md"
alias hs="http-serve "
alias vdots="code $ZSH"
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
# alias scrape="~/Library/Python/2.7/lib/python/site-packages/soundscrape/soundscrape.py "
