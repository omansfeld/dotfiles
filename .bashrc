# PATHS
export XDG_CONFIG_HOME=$HOME/.config
export PATH=$HOME/.local/bin:$PATH

# WSL specifics
if [ -n "$WSL_DISTRO_NAME" ]; then
	echo "WSL specifics loaded"
	export WINHOME='/mnt/c/Users/mansf'
	export ALACRITTY='/mnt/c/Users/mansf/AppData/Roaming/alacritty'
	alias alacritty="cd $ALACRITTY"
	alias vault='cd /mnt/e/Users/mansf/Dokumente/obsidian-vault'
fi

# ALIASES for commands
alias c='clear'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias v='vim'
if command -v nvim &>/dev/null; then
	alias vim='nvim'
else
	echo "nvim is not installed"
fi
if command -v batcat &>/dev/null || command -v bat &>/dev/null; then
	alias bat='batcat'
	alias cat='bat --plain'
else
	echo "bat (better cat) is not installed"
fi

# ALIASES for files
alias rc="v $HOME/.bashrc"
alias src="source $HOME/.bashrc"

# ALIASES for dirs
export REPOS="$HOME/git_repositories"
alias repos="cd $REPOS"
export UNO="$REPOS/uno"

export HWR="$REPOS/hwr"
alias hwr="cd $HWR"
alias sem4="cd $HWR/sem4"

# Go
if command -v go version &>/dev/null; then
	echo "Go specifics loaded"
	export GOROOT=/usr/local/go
	export GOPATH=$HOME/go
	export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
fi

# Python
export AID="$REPOS/HealthPatterns"
alias aid="cd $AID && source .venv/bin/activate"

# PROMPT
if command -v starship &>/dev/null; then
	echo "Starship prompt loaded"
	eval "$(starship init bash)"
else
	echo "Native prompt loaded"
	source $HOME/.git-prompt.sh
	export GIT_PS1_SHOWUNTRACKEDFILES=1
	export GIT_PS1_SHOWDIRTYSTATE=1
	export GIT_PS1_SHOWUPSTREAM="auto"
	export GIT_PS1_SHOWSTASHSTATE=1
	export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(__git_ps1)\[\033[00m\] $ "
fi

echo ".bashrc loaded succesfully"
