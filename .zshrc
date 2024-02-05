# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

# History stuff
HISTFILE=~/.histfile
SAVEHIST=2048
setopt sharehistory histreduceblanks histexpiredupsfirst

# autoloads
autoload -Uz compinit && compinit
autoload -U colors && colors

# colored diffs
[ -e "`which colordiff`" ] && alias diff="colordiff"

# Path mods
export PATH=$HOME/.bin:/usr/local/lib/nvidia/cuda-12.3/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib/nvidia/cuda-12.3/lib64:$LD_LIBRARY_PATH

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HF_HOME="/mnt/megapenthes/Development/huggingface"

mount | grep -q 'nvidia' || sudo mount -t auto /dev/zvol/proteus/cuda /usr/local/lib/nvidia
