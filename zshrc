source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"

if ! zplug check; then
    zplug install
fi

zplug load

autoload -Uz colors
colors

autoload -Uz compinit
compinit

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history
setopt append_history
setopt no_beep

alias vim="nvim"
alias la="ls -a"
alias ll="ls -al"

zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

PROMPT="
${fg[yellow]}[%n] ${fg[cyan]}%~${reset_color}
%# "

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "%F{green}[%b]%f"
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"
