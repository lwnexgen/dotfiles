# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

export EDITOR=emacs
export PATH=/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Users/sgardner/.bin:$PATH

# ZMV
autoload zmv

# Colors
autoload -U colors && colors
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[red]%}%1~ %{$reset_color%}%# "
[ -e .dircolors ] && eval `dircolors .dircolors`
export CLICOLOR="yes"

# Aliases
alias ls='ls -lh --color --group-directories-first'
alias df='df -h'
alias mkdir='mkdir -p'
alias today='date +%Y.%m.%d'

bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[C' forward-word
bindkey '^[[D' backward-word
bindkey '^[^[[C' forward-char
bindkey '^[^[[D' backward-char
bindkey '^[[3~' delete-char
