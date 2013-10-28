# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

# Share history
setopt hist_ignore_dups share_history inc_append_history extended_history

# Colorize stuff
autoload -U colors && colors
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[red]%}%1~ %{$reset_color%}%# "
export CLICOLOR="YES"

if [ `uname` == "Linux" ] ; then
    alias ls='ls -lh --group-directories-first --color=auto'
else
    alias ls='ls -lGh'
fi

alias df='df -h'
alias mkdir='mkdir -p'
alias today='date +%Y.%m.%d'

export TERM='xterm-256color'

if [ -x `which emacs` ] ; then
    export EDITOR=`which emacs`
fi
