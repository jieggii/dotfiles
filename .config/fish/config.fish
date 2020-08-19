# Environment vars
set EDITOR /bin/nvim
set VISUAL /bin/nvim
set PAGER /bin/less

# Theme settings
set theme_color_scheme gruvbox

# Aliases
alias nv="nvim"
alias bat="bat -p"
alias termbin="nc termbin.com 9999"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
