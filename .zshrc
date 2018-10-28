# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i

# ~/.zshrc
source ~/.zsh/plugins.sh
source ~/.zsh/config.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/docker.aliases
source ~/.zsh/system.aliases


