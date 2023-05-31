# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Options (man zshoptions)
setopt autocd prompt_subst
unsetopt beep

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
# Tmux-sessionizer
tmux_sessionizer() {
    tmux-sessionizer
}
zle -N tmux_sessionizer
bindkey "^f" tmux_sessionizer

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b ' # (man zshcontrib)
PROMPT='%B%F{blue}%c %F{yellow}${vcs_info_msg_0_}%(?.%F{green}>.%F{red}>)%f%b ' # (man zshmisc)

# Aliases
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias vi='nvim'
alias vim='nvim'

# Has to be at the bottom of the file {
# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # pacman -S zsh-autosuggestions

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # pacman -S zsh-syntax-highlighting
# }
