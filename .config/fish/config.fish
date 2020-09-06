# Environment vars
set EDITOR /bin/nvim
set VISUAL /bin/nvim
set PAGER /bin/less
set XDG_CONFIG_HOME $HOME/.config

# Theme settings
set theme_color_scheme gruvbox
set theme_display_date no

function fish_greeting
end

# Aliases
alias nv=nvim
alias bat="bat --plain --number"
alias py="poetry run python"
alias termbin="nc termbin.com 9999"
alias pacman-unlock="sudo rm /var/lib/pacman/db.lck"
alias cp="cp -i"
alias df="df -h"
alias du="du -h"
alias open-repo="firefox (git remote get-url origin)"

# ls -> exa (https://github.com/ogham/exa)
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
