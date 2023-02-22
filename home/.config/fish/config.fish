set -x EDITOR /usr/bin/nvim
set -x VISUAL /usr/bin/nvim
set -x PAGER /usr/bin/less

set -x GOPATH $HOME/.go
set -x ANDROID_HOME $HOME/.android/Sdk

set -x XDG_CONFIG_HOME $HOME/.config

function fish_greeting
end

#function fish_prompt
#	echo (echo "(")(basename (pwd))(echo ")")%(echo " ") 
#end

#function fish_right_prompt
#		fish_git_prompt
#end

alias nv=nvim
alias bat="bat --plain"
alias pacman-unlock="sudo rm /var/lib/pacman/db.lck"
alias cp="cp -iv"
alias mv="mv -iv"
alias df="df -h"
alias du="du -sh"
alias ipinfo="curl https://ipinfo.io"

alias boot-windows="sudo efibootmgr --bootnext 0001 && reboot"

# https://github.com/ogham/exa
alias ls="exa --group-directories-first"
alias la="exa --long --all --group-directories-first"
alias ll="exa --long --git --group-directories-first"
alias tree="exa -T --icons -I __pycache__ --group-directories-first"
alias l.="exa -a -1 | egrep '^\.'"

# start X11 on login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        echo "Hewwo, cutie! Starting X server..."
		exec startx -- -keeptty
    end
end