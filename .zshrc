# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i
#export TERM="xterm-256color"
export EDITOR=/usr/bin/vim # default editor
export VISUAL=/usr/bin/vim # default editor
export PATH=$PATH:$HOME/.local/bin

# ~/.zshrc
source ~/.zsh/plugins.sh
source ~/.zsh/config.zsh
source ~/.zsh/function.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/powerlevel9k.zsh
source ~/.zsh/ibus.zsh
source ~/.zsh/go.zsh
source ~/.zsh/php.zsh
source ~/.zsh/node.zsh
source ~/.zsh/android.zsh
source ~/.zsh/terraform.zsh
source ~/.zsh/docker.aliases
source ~/.zsh/system.aliases

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh 

