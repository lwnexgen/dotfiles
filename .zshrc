# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

# History stuff
HISTFILE=~/.histfile
SAVEHIST=512
setopt sharehistory incappendhistory histreduceblanks histexpiredupsfirst

# autoloads
autoload -Uz compinit && compinit
autoload -U colors && colors

# colored diffs
[ -e "`which colordiff`" ] && alias diff="colordiff"

# Path mods
export PATH=$HOME/.bin:$PATH

# default emacs editor
export EDITOR=emacs

# Colors
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[red]%}%1~ %{$reset_color%}%# "
[ -e .dircolors ] && eval `dircolors .dircolors`
export CLICOLOR="yes"

# Aliases
alias ls='ls -lh --color --group-directories-first'
alias df='df -h'
alias mkdir='mkdir -p'
alias today='date +%Y.%m.%d'
alias tmux='TERM=screen-256color tmux'
alias less='less -R'

bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[C' forward-word
bindkey '^[[D' backward-word
bindkey '^[OC' forward-word
bindkey '^[OD' backward-word
bindkey '^[[1;3C' forward-char
bindkey '^[[1;3D' backward-char
bindkey '^[[3~' delete-char
