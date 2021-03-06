# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dbm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="/usr/local/bin:$HOME/go/bin:$PATH"

alias cdb_skill_prod_user="cockroach sql --url 'postgresql://eduforall:PiNt4rS3kaLi@172.20.1.16:26257/skillacademy_users?sslmode=require'"
alias cdb_skill_prod="cockroach sql --url 'postgresql://skillacademy:u8knOHeYQxbDQyey@cockroach-prod-id-sa.cockroach-prod-id-sa.il4.asia-southeast1.lb.silicon-airlock-153323.internal:26257/defaultdb?sslmode=require'"

alias gbr="git branch | grep -v "master" | xargs git branch -D"

alias kpod='f() { kubectl get pods -lserviceName=$1 -n $2};f'
alias klog='f() { kubectl logs $3 -n $1 -c $2 -f};f'
alias kcrg='kubectl --context gke_silicon-airlock-153323_asia-southeast1-a_ruangguru-k8s'
alias kcid='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-id-prod-1'
alias kcgl='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-glo-infra-1'

alias ga="git add ."
alias gp="git push origin"
alias gc="git commit -m"
alias gco="git checkout"
alias gpm="git pull origin master"
alias gs="git status"
source /Users/dbm/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias rg="cd ~/go/src/gitlab.com/ruangguru/source"

alias pubsub="gcloud beta emulators pubsub start --project=silicon-airlock-153323"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dbm/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dbm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dbm/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dbm/google-cloud-sdk/completion.zsh.inc'; fi
