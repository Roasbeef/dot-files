# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

alias zshconfig="vim ~/.zshrc"
alias vimconfig="cd /usr/local/Cellar/vim/8.0.0134_2/share/vim"
alias ohmyzsh="cd ~/.oh-my-zsh"

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
COMPLETION_WAITING_DOTS="true"

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
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/olaoluwaosuntokun/Library/Python/2.7/bin

#source /usr/local/bin/virtualenvwrapper.sh

export PYTHONPATH=/Library/Python/2.7/site-packages:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages:$PYTHONPATH

export TERM="xterm-256color"

# powerline
#source /usr/share/vim/vim73/bundle/powerline/bindings/zsh/powerline.zsh

# GoFmt options
export GOROOT=/usr/local/go
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin/
export PATH=$PATH:$GOROOT/bin
# for Go on AppEngine
export PATH=$PATH:/Users/olaoluwaosuntokun/Downloads/google_appengine

export PATH=$PATH:/usr/local/lib:/usr/local/include

export PATH=$PATH:/opt/local/bin

# Boot2docker
# eval "$(boot2docker shellinit)"
# eval "$(docker-machine env default)"

export GPGKEY=AA748703

export VISUAL=/usr/local/bin/vim

# The next line updates PATH for the Google Cloud SDK.
# source '/Users/olaoluwaosuntokun/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
# source '/Users/olaoluwaosuntokun/google-cloud-sdk/completion.zsh.inc'
