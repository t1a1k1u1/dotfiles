# Plugin -----------------------------------------------------------
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

# common ------------------------------------------------------------
HISTFILE=$HOME/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history

alias vim='nvim'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias cll='clear;ls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
