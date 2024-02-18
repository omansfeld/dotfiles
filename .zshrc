# Paths
export XDG_CONFIG_HOME=$HOME/.config
export PATH=$HOME/.local/bin:$PATH
export WINHOME='/mnt/c/Users/mansf'

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# enable vim mode
bindkey -v

# aliases for commands
alias c='clear'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'
alias v='nvim'
alias cat='batcat --plain'

# aliases for files
alias rc="nvim $HOME/.zshrc"
alias rcr="source $HOME/.zshrc"

# aliases for dirs
export ALACRITTY='/mnt/c/Users/mansf/AppData/Roaming/alacritty'
alias alacritty="cd $ALACRITTY"
alias vault='cd /mnt/e/Users/mansf/Dokumente/Obsidian\ Vault'

# prompt
# enable starship prompt
eval "$(starship init zsh)"
# enable custom prompt
#source $HOME/.git-prompt.sh
#export PROMPT='%F{green}%n@%m:%F{blue}%~%F{reset}$(__git_ps1 " (%s) ")%# '
# zsh plugins:
export PLUGINS=$XDG_CONFIG_HOME/zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

echo ".zshrc loaded!"
