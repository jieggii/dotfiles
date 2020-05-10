export ZSH="/home/jieggii/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export UPDATE_ZSH_DAYS=7
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

ZSH_THEME="agnoster"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-completions
)

source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias v='nvim'
alias nv='nvim'

alias py='python'
alias зн='python'

alias ipp='curl ipinfo.io/ip'

PF_ASCII="arch" PF_INFO="ascii title os kernel wm shell pkgs palette" PF_COL3=6 pfetch
