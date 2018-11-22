# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i
export TERM="xterm-256color"

# ~/.zshrc
source ~/.zsh/plugins.sh
source ~/.zsh/config.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/docker.aliases
source ~/.zsh/system.aliases
source ~/.zsh/powerlevel9k

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
