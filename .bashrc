#
# ~/.bashrc
#
# set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hN --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias p='sudo pacman'
alias tr='trizen -S --noconfirm'
alias cdS='cd /srv/http'
alias cdP='cd ~/MEGAsync/Project'
alias vimn='vim -N -u NONE'
alias v='vim'
alias e='exit'
alias tmuxa='tmux attach || tmux new'
alias tmuxs='tmux new -s'
alias r='ranger'
alias sr='sudo ranger'
alias sdn='shutdown now'
alias tsource='tmux source-file .tmux.conf'
alias diska='ncdu'
alias wine-32='WINEPREFIX=~/wine32'

PS1='[\u@\h \W]\$ '
PS1="[\[\e[0;35m\]\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\] \W]\$ "
# bind '"jk":vi-movement-mode'

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_prompt_command
fi

# export PATH="/home/minawk/.script:$PATH"
export VISUAL=/usr/bin/vim
export EDITOR='vim'
export PATH="$PATH:$HOME/.scripts:$HOME/.config/composer/vendor/bin"
export QT_QPA_PLATFORMTHEME='qt5ct'
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# To open tmux by default on any terminal emulator
# [ -z "$TMUX"  ] && { exec tmux;}
