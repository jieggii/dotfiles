# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:~/.local/bin/

ZSH_THEME="sunrise"
# ZSH_THEME_RANDOM_BLACKLIST=(fox amuse dogenpunk apple smt skaro)
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-completions
	history-substring-search
	zsh-syntax-highlighting
)

export ZSH="/home/jieggii/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export TERM="termite"
export _JAVA_AWT_WM_NONREPARENTING=1

alias vim="nvim"
alias nv="nvim"

alias py="python"
alias зн="python"

alias ipp="curl ipinfo.io/ip"

source $ZSH/oh-my-zsh.sh
export PF_INFO="ascii title os kernel uptime shell editor palette"
pfetch
# curl -s "https://api.urbandictionary.com/v0/random" | jq -r ".list[0] | .word, .definition, .example" | awk '{if(NR==1) print $0; else if (NR==2) print "Defenition: " $0; else if (NR==3) print "Example: " $0}'

source /home/jieggii/.config/broot/launcher/bash/br
