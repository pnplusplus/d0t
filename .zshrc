autoload -U colors && colors
PS1='%n@%m:%d> '

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

alias nano='micro'
alias ls='ls -lA --color=auto --group-directories-first'
alias notepadqq='notepadqq --allow-root'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
