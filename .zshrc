# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i
#export TERM="xterm-256color"
export EDITOR=/usr/bin/vim # default editor
export VISUAL=/usr/bin/vim # default editor

# ~/.zshrc
source ~/.zsh/plugins.sh
source ~/.zsh/config.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/powerlevel9k.zsh
source ~/.zsh/docker.aliases
source ~/.zsh/system.aliases


# export go path
if [[ -d ~/go ]] ; then
    export PATH=$PATH:~/go/bin
    export GOPATH=~/go
    export GO111MODULE=auto
fi

