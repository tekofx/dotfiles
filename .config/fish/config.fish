##########################################
#                 Aliases                #
##########################################

alias ls "exa --group-directories-first"
alias tree "exa -T"

# git
alias gs "git status"
alias gp "git push"
alias gc "git commit -m"

# dotfiles
alias dot "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias ds "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME status"
alias da "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add" 
alias dc "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m" 
alias dp "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push" 

##########################################
#              fzf setup                 #
##########################################

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


##########################################
#              PATH                      #             
##########################################

set PATH ~/.config/rofi/bin/ $PATH



