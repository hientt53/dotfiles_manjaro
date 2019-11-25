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

# gitignore generate function
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

