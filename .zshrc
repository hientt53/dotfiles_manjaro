# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i

# ~/.zshrc
source ~/.zsh/plugins.sh

# resovle Home End key notworking
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
