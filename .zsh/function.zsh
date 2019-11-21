# Support for bash
PROMPT_COMMAND='prompt'

# Mirrored support for zsh. See: https://superuser.com/questions/735660/whats-the-zsh-equivalent-of-bashs-prompt-command/735969#735969
precmd() { eval "$PROMPT_COMMAND" }

function prompt()
{
    if [ "$PWD" != "$MYOLDPWD" ]; then
        MYOLDPWD="$PWD"
        test -e .venv && workon `cat .venv`
    fi
}


# Open a new window in this term's cwd
alias nw="urxvt256c-mlc"
nwZle() { zle push-line; BUFFER="nw"; zle accept-line; }
zle -N nwZle
# CTRL+n
bindkey '^n' nwZle

# gitignore generate function
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

