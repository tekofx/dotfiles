##########################################
#                 Aliases                #
##########################################


# git
alias gs "git status"
alias gp "git push"
alias gc "git commit -m"

# dotfiles
alias dot "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias ds "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME status"
alias da "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add" 
alias dc "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m" 
alias dr "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME remove" 
alias dp "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push" 

alias bat "batcat"
alias gotop "gotop-brlin"

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
set PATH ~/bin/ $PATH
set PATH /snap/bin/ $PATH
set PATH /usr/sbin/ $PATH
set PATH ~/.local/bin $PATH 
set PATH ~/.cargo/bin/ $PATH

##########################################
#              navi                      #
##########################################
navi widget fish | source
