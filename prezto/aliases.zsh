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
alias work="~/Documents/Work/cyto"
alias music="~/Music"



# Code 
### apps
alias aelx="~/Code/Elixir/apps"
alias aem="~/Code/Ember/apps"
alias ajs="~/Code/JavaScript/apps"
alias avue="~/Code/Vue/apps"

### courses
alias celx="~/Code/Elixir/courses"
alias cem="~/Code/Ember/courses"
alias cjs="~/Code/JavaScript/courses"
alias cvue="~/Code/Vue/courses"

### demos
alias delx="~/Code/Elixir/demos"
alias dem="~/Code/Ember/demos"
alias djs="~/Code/JavaScript/demos"
alias dvue="~/Code/Vue/demos"

### projects
alias pelx="~/Code/Elixir/projects/current"
alias pem="~/Code/Ember/projects/current"
alias pjs="~/Code/JavaScript/projects/current"
alias pvue="~/Code/Vue/projects/current"

### books
alias bjs="~/Code/JavaScript/books"
alias bvue="~/Code/Vue/books"
alias belx="~/Code/Elixir/books"


### cyto
alias cyto="~/Code/Work/cyto"
alias cyto3="~/Code/Work/cyto-v3"



# Apps
alias v="code ."
alias mong="mongod --dbpath /usr/local/var/mongodb "
alias mongsh="mongo --host 127.0.0.1:27017 "



# NPM
alias ni="npm install "
alias nid="npm install --save-dev "
alias nu="npm uninstall "
alias nup="npm update"
alias nru="npm run unit"
alias nri="rm -r node_modules && npm install"
alias ncd="npm-check -su"
alias nrb="npm run build"
alias nrd="npm run dev"
alias nrl="npm run lint"
alias nrlf="npm run lint:fix"
alias nst="npm start"
alias nt="npm test "
alias niw="npm install --save-dev  webpack webpack-cli"


# Yarn
alias ya="yarn add "
alias yb="yarn build"
alias yga="yarn global add "
alias yu="yarn upgrade "
alias yr="yarn remove "
alias yi="yarn install "
alias ys="yarn serve"
alias yst="yarn start"
alias yd="yarn dev"
alias yl="yarn lint"
alias ylf="yarn lint:fix"
alias ypr="yarn add prettier --dev --exact"
alias yrx="yarn add rxjs webpack webpack-dev-server"
alias yun="yarn unit"
alias yaw="yarn add webpack webpack-cli"
alias bruy="brew upgrade yarn --without-node"



# Node
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
alias mphxs="mix phx.server"



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
