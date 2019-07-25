# export go path
if [[ -d ~/go ]] ; then
    export PATH=$PATH:$HOME/go/bin
    export GOPATH=$HOME/go
    export GO111MODULE=auto
fi

