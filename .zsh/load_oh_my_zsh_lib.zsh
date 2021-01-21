ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh" 
if [[ -z "$ZSH_CACHE_DIR" ]]; then
 ZSH_CACHE_DIR="$ZSH/cache"
fi
for file in $ZSH/lib/*.zsh; do
    source "$file"
done
