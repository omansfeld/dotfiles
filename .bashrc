# Paths
export XDG_CONFIG_HOME=$HOME/.config
export PATH=$HOME/.local/bin:$PATH
export WINHOME='/mnt/c/Users/mansf'

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


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
alias rc="nvim $HOME/.bashrc"
alias src="source $HOME/.bashrc"

# aliases for dirs
export ALACRITTY='/mnt/c/Users/mansf/AppData/Roaming/alacritty'
alias alacritty="cd $ALACRITTY"
alias vault='cd /mnt/e/Users/mansf/Dokumente/Obsidian\ Vault'

# prompt
# enable starship prompt
eval "$(starship init bash)"
# enable custom prompt
#source $HOME/.git-prompt.sh
#export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(GIT_PS1_SHOWUNTRACKEDFILES=1 GIT_PS1_SHOWDIRTYSTATE=1 __git_ps1)\[\033[00m\] $ "
echo ".bashrc loaded!"
