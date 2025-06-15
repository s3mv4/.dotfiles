# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Options
setopt autocd prompt_subst
unsetopt beep

# Vi mode
bindkey -v

# Command completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# Hidden files in tab completion menu
_comp_options+=(globdots)

# Key bindings
# Vi keys in tab completion menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
# Allow backspace in insert mode
bindkey -v '^?' backward-delete-char
# Tmux-sessionizer
bindkey -s '^f' 'tmux-sessionizer\n'

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
PROMPT='%B%F{blue}%~ %F{yellow}${vcs_info_msg_0_}%(?.%F{green}>.%F{red}>)%f%b '

# Aliases
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias ta='tmux attach'

# Autosuggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#616e88"

# Syntax highlighting and autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
