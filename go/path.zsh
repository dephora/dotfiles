go_path=$(which go)
if [[ -x ${go_path} ]]; then
  export GOPATH=$PROJECTS/go
  export PATH=$PATH:$(go env GOPATH)/bin
fi
