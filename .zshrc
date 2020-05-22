# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# fix errer command not found: compdef when load oh-my-zsh plugin
autoload -Uz compinit
compinit -i
#export TERM="xterm-256color"
export EDITOR=/usr/bin/vim # default editor
export VISUAL=/usr/bin/vim # default editor
export BROWSER=/usr/bin/google-chrome-stable
export PATH=$PATH:$HOME/.local/bin

# ~/.zshrc
source ~/.zsh/plugins.sh
source ~/.zsh/config.zsh
source ~/.zsh/function.zsh
source ~/.zsh/completion.zsh
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh
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

