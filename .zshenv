typeset -U path PATH
path=(~/.local/bin $path)
export PATH
if [[ -e "$HOME/.cargo/env" ]]; then
    . "$HOME/.cargo/env"
fi
