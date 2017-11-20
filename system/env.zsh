if [[ "$(uname -s)" == "Darwin" ]]
then
  export EDITOR='code -n -w'
else
  export EDITOR='vim'
fi
