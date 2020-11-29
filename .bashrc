#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# VBoxClient configuration 
VBoxClient-all

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Goto 
source ~/bin/forgit/forgit.plugin.sh

# fzf setup
export FZF_DEFAULT_OPTS="
--ansi
--info=inline
--height=70%
--layout=reverse 
--preview-window='right:hidden:wrap:60%'
--bind='f2:toggle-preview'
--bind='alt-w:preview-page-up'
--bind='alt-s:preview-page-down'
--preview 'bat --color=always --style=header,grid --line-range :300 {}'
"


# Source goto
[[ -s "/usr/local/share/goto.sh" ]] && source /usr/local/share/goto.sh

