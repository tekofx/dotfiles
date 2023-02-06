##########################################
#                 Aliases                #
##########################################


# git
alias gs "git status"
alias gp "git push"
alias gc "git commit -m"

# exa
alias tree "exa -T"
alias ls "exa"

# Kitty aliases
alias icat "kitty +kitten icat"
alias themes "kitty +kitten themes"

# Docker aliases
alias bots "docker-compose -f ~/bots/docker-compose.yml"
alias web "docker-compose -f ~/webserver/docker-compose.yml"
alias dc "docker-compose"
alias d "docker"

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
set PATH /usr/local/bin/ $PATH

##########################################
#              navi                      #
##########################################
navi widget fish | source

##########################################
#             spaceship                  #
##########################################
starship init fish | source

set TERM xterm
##########################################
#               tere                     #
##########################################
function tere
    set --local result (command tere $argv)
    [ -n "$result" ] && cd -- "$result"
end

export VISUAL="micro"
export EDITOR="micro"
set fish_greeting 
zoxide init fish | source

neofetch
