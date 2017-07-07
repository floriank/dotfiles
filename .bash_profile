export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR='vim'
export TERM="xterm-256color"

alias ll='ls -lha'
alias dc='docker-compose'
alias gf='git fetch'
alias gp='git pull'
alias pupu='git pull && git push'
alias cdc='cd ~/code'

export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[34m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '

PATH=$PATH:/usr/local/go/bin:$HOME/code/go/bin
export PATH

# add adr tooling
PATH=$PATH:/usr/local/adr/src

export GOPATH=$HOME/code/go
export GOROOT=/usr/local/go

export PATH="$HOME/.rbenv/bin:$PATH"

export XDG_CONFIG_HOME=$HOME/.config

function rbenvsudo(){
  executable=$1
  shift 1
  sudo $(rbenv which $executable) $*
}

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
source '/home/florian/Downloads/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/home/florian/Downloads/google-cloud-sdk/completion.bash.inc'

