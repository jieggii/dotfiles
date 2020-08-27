# Environment vars
set EDITOR /bin/nvim
set VISUAL /bin/nvim
set PAGER /bin/less

# Theme settings
set theme_color_scheme gruvbox

# Aliases
alias nv="nvim"
alias bat="bat --plain --number"
alias py="poetry run python"
alias termbin="nc termbin.com 9999"
alias cp="cp -i"
alias df="df -h"
alias du="du -h"
alias c="clear"

alias wwwrepo="firefox (git remote get-url origin)"

# exa
alias ls="exa --color=auto --group-directories-first"
alias la="exa --color=auto -a --group-directories-first"
alias ll="exa --color=auto -l --group-directories-first"
alias tree="exa --color=auto -aT --group-directories-first"
alias l.="exa --color=auto -a | egrep '^\.'"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
