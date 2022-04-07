zmodload zsh/zprof
export ZSH="/Users/dbm/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(git kubectl docker docker-compose npm colorize zsh-syntax-highlighting zsh-autosuggestions fzf)
source $ZSH/oh-my-zsh.sh

# timezsh() {
#   shell=${1-$SHELL}
#   for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
# }


export FZF_BASE=/opt/homebrew/bin/fzf
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export ROGU_KEY_PATH="$HOME/.config/gcloud/application_default_credentials.json"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:$HOME/.jetbrain:/Users/dbm/Library/Android/sdk/platform-tools"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd
export GOKU_ENDPOINT="http://goku-id-prod-cluster.rg.internal"
export GOOGLE_APPLICATION_CREDENTIALS=~/.rogu/key-prod.json
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
export GRACE_ENDPOINT=http://172.16.1.19/grace
export KUBECONFIG=/Users/dbm/Projects/infrastructure/digitalocean/kubeconfigs/k8s-1-19-12-do-0-sgp1-1627272976486-kubeconfig.yaml
# export KUBECONFIG=/Users/dbm/Projects/infra-sim/digitalocean/doks-sim-main-1-kubeconfig.yaml
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# # alias kpod='f() { kubectl get pods -lserviceName=$1 -n $2};f'
# # alias klog='f() { kcrg logs $3 -n $1 -c $2 -f};f'
alias dbp='f() { docker build . -t $1 && docker push $1 };f'
alias kcrg='kubectl --context gke_silicon-airlock-153323_asia-southeast1-a_ruangguru-k8s'
alias kcid='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-id-prod-1'
alias kcgl='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-glo-infra-1'
alias kcucrg='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1-a_ruangguru-k8s --namespace=production'
alias kcucgl='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-glo-infra-1'
alias kcucid='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-id-prod-1 --namespace=production'
alias kcucth='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-th-prod-1 --namespace=th-production'
alias kcucvn='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-vn-prod-1 --namespace=vn-production'
alias gs="git status"
alias rg="cd ~/go/src/gitlab.com/ruangguru"
alias rgs="cd ~/go/src/gitlab.com/ruangguru/source"
alias pubsub-emulator="gcloud beta emulators pubsub start --project=silicon-airlock-153323"
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias ssh-devbox="ssh debam@172.16.0.26"
alias dsim="docker --config ~/.dockersim"

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dbm/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dbm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dbm/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dbm/google-cloud-sdk/completion.zsh.inc'; fi

# # export PUBSUB_EMULATOR_HOST=localhost:8085
# # export PUBSUB_PROJECT_ID=silicon-airlock-153323
# # export GOOGLE_APPLICATION_CREDENTIALS=~/.rogu/gcs-key.json

nvm(){
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

conda() {
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/Users/dbm/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/Users/dbm/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/Users/dbm/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/Users/dbm/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$PATH"
