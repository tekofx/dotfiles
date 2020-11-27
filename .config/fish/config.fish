# Aliases
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias gs "git status"
alias gp "git push"
alias gc "git commit"
alias dotfiles "/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

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
