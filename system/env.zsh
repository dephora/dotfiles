if [[ "$(uname -s)" == "Darwin" ]]
then
  export EDITOR='subl -n -w'
else
  export EDITOR='vim'
fi
