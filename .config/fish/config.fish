set -x EDITOR /bin/nvim
set -x VISUAL /bin/nvim
set -x PAGER /bin/less
set -x XDG_CONFIG_HOME $HOME/.config

set -x GOROOT $HOME/.goroot
set -x GOPATH $HOME/.gopath

set theme_color_scheme gruvbox
set theme_display_date no

function fish_greeting
end

# Aliases
alias nv=nvim
alias bat="bat --plain --number"
alias py="poetry run"
alias termbin="nc termbin.com 9999"
alias pacman-unlock="sudo rm /var/lib/pacman/db.lck"
alias cp="cp -i"
alias mv="mv -i"
alias df="df -h"
alias du="du -sh"
alias c="clear"

# ls -> exa (https://github.com/ogham/exa)
alias ls="exa --color=auto --group-directories-first"
alias la="exa --color=auto -a --group-directories-first"
alias ll="exa --color=auto -l --group-directories-first"
alias tree="exa --color=auto -T -I __pycache__ --group-directories-first"
alias l.="exa --color=auto -a | egrep '^\.'"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
