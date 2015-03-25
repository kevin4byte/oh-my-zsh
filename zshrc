# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="avit"
#ZSH_THEME="candy"
ZSH_THEME="agnoster"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/xiaowl/tools/xctool:/Users/xiaowl/bin:$PATH

# make PIL can be found by Python
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/

# android path
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/Users/xiaowl/tools/xctool:/Users/xiaowl/tools/adt-bundle-mac-x86_64-20130917/sdk/tools:/Users/xiaowl/tools/gradle-1.6/bin

# adb tools
export PATH=$PATH:/Users/xiaowl/work/tools/adt-bundle-mac-x86_64-20140702/sdk/platform-tools/

# F**king errors when upgrade to xcode 5.1
# http://stackoverflow.com/questions/22388519/problems-with-pip-install-numpy-runtimeerror-broken-toolchain-cannot-link-a
export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future
export GRADLE_OPTS=-Xmx2048m

export PATH=$PATH:/Users/xiaowl/anaconda/bin
export GOPATH=/Users/xiaowl/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/xiaowl/work/tools/gradle-1.12/bin
alias ec="emacsclient"

PATH=~/bin:$PATH
export PATH=/usr/local/bin:$PATH
# boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2375

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

unsetopt share_history
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
alias vi="emacsclient -nw"
function _remote() {
    ssh -t $@ tmux a
}
alias remote=_remote
export VIRTUAL_ENV_DISABLE_PROMPT=1
