# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Options
setopt autocd prompt_subst

# Vi mode
bindkey -v

# Command completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots) # Show hidden files in tab completion menu

# Key bindings
zmodload zsh/complist # Needed for the tab completion menu key bindings
# Vi keys in tab completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
# Allow backspace in insert mode
bindkey "^?" backward-delete-char

# Prompt
# PROMPT='%B%F{red}[%F{green}%n%F{yellow}@%F{blue}%m %F{magenta}%~%F{red}]%F{cyan}%#%f%b '
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{blue}%s:(%F{red}%b%F{blue}) '
PROMPT='%B%F{cyan}%c ${vcs_info_msg_0_}%(?.%F{green}->.%F{red}->)%f%b '

# Aliases
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias vi='nvim'
alias vim='nvim'

# Autostart tmux
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    tmux attach || tmux >/dev/null 2>&1
fi

# Has to be at the bottom of the file {
# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# }
