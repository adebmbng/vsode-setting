export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git docker kubectl docker-compose colorize)

source $ZSH/oh-my-zsh.sh
alias dbp='f() { docker build . -t $1 && docker push $1 };f'


export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export KUBECONFIG=/Users/dbm/projects/sim/kubernetes/kubeconfig.yaml
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

export PATH="$PATH:/Users/dbm/Library/Application Support/JetBrains/Toolbox/scripts"
eval "$(/opt/homebrew/bin/brew shellenv)"
