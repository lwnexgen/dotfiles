# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

autoload -U colors && colors
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[red]%}%1~ %{$reset_color%}%# "

CLICOLOR="YES";                        export CLICOLOR

[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"

[ -e "$DIR_COLORS" ] || DIR_COLORS=""

eval "`dircolors -b $DIR_COLORS`"
alias ls='ls --color=auto'

alias ls='ls -lh --color=auto --group-directories-first'
alias df='df -h'

EDITOR=/usr/bin/emacs
export EDITOR
