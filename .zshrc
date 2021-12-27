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
alias kuyupdate='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && yay -Syy --noconfirm'
alias kuyupgrade='kuyupdate \
      && yay -Su --noconfirm'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
