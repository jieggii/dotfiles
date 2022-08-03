set -x EDITOR /usr/bin/nvim
set -x VISUAL /usr/bin/nvim
set -x PAGER /usr/bin/less

set -x GOPATH $HOME/.go

set -x XDG_CONFIG_HOME $HOME/.config

# set -g theme_color_scheme onedark

# disables stupid fish greeting
function fish_greeting
end

function fish_prompt
	# pwd
	echo "% "
end

# required to disable annoying clock on the right
# in https://github.com/aneveux/theme-harleen theme
# function fish_right_prompt
# end

# function gitforcepush
# 	git add .
# 	git commit -m "$argv"
# 	git push
# end

alias nv=nvim
alias bat="bat --plain"
alias pacman-unlock="sudo rm /var/lib/pacman/db.lck"
alias cp="cp -iv"
alias mv="mv -iv"
alias df="df -h"
alias du="du -sh"
alias ipp="curl ipinfo.io/ip"
alias swallow="devour"

# https://github.com/ogham/exa
alias ls="exa --group-directories-first"
alias la="exa --long --all --group-directories-first"
alias ll="exa --long --git --group-directories-first"
alias tree="exa -T --icons -I __pycache__ --group-directories-first"
alias l.="exa -a -1 | egrep '^\.'"

# startx on login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        echo "Hewwo, cutie! Starting X server..."
		exec startx -- -keeptty
    end
end

