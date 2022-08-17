export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(git docker kubectl docker-compose colorize)

source $ZSH/oh-my-zsh.sh
alias dbp='f() { docker build . -t $1 && docker push $1 };f'


export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export KUBECONFIG=/Users/dbm/projects/sim/kubernetes/kubeconfig.yaml

export PATH="$PATH:/Users/dbm/Library/Application Support/JetBrains/Toolbox/scripts"
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib -L/opt/homebrew/opt/openssl@3/lib -L/opt/homebrew/opt/libxslt/lib -L/opt/homebrew/opt/libxml2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include -I/opt/homebrew/opt/openssl@3/include -I/opt/homebrew/opt/libxslt/include -I/opt/homebrew/opt/libxml2/include"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/libxslt/bin:$PATH"
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
export DYLD_LIBRARY_PATH=/opt/homebrew/lib
