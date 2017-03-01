# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# aliases
alias vim="mvim"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias mig="mvn clean compile install -Dmaven.test.skip=true"
alias mit="mvn tomcat7:run"
alias vo="vim -O"
alias voa="vim -O *"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias mig="mvn clean compile install -U -Dmaven.test.skip=true"
alias mit="mvn tomcat7:run"
alias gmd="gulp ws --mod"
alias gau="git shortlog --numbered --summary"
alias brackets="open /Applications/Brackets.app"
alias ls="gls\ --color"
alias ipp="dig @208.67.222.222 myip.opendns.com +short"
alias vo="vim -O"
alias voa="vim -O *"
alias faker="faker-cli -L zh_CN"
alias gbo="git browse"
alias ghci='stack ghci'
alias fuck='eval $(thefuck $(fc -ln -1))'
alias v='vim $(fzf)'
alias io='iojs'
alias ls='ls -G'
alias tryproxy='curl -o /dev/null www.google.com'
alias px4='proxychains4'

# replace recursively with sed
alias rep='function _replace(){ eval "find . -type f -name \"*.$1\" -exec sed -i \"\" s/$2/$3/g {} +";};_replace'
alias repall='function _replaceAll(){ eval "LC_ALL=C find . -type f -name \"*\" -exec sed -i \"\" s/$1/$2/g {} +";};_replaceAll'
alias repicon='function _replaceAll(){ eval "LC_ALL=C find . -type f -name \"*\" -exec sed -i \"\" s/icon-$1/icon-$2/g {} +";};_replaceAll'
alias pyserver='python -m SimpleHTTPServer 8090'
alias gs='function _gs() {git grep -ni $1 | fpp};_gs'
alias sw='python ~/.switchKeyboard.py'
alias yor='function _yoReact(){eval "yo react-webpack-redux:$1 $2";};_yoReact'
alias webpackanalyse='webpack --json | webpack-bundle-size-analyzer'
alias gbauther="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"

# alias dayone='/usr/local/bin/dayone -j=~/Library/Group\ Containers/5U8NS4GX82.dayoneapp2/Data/Auto\ Import/Default\ Journal.dayone'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump osx mvn cp brew colorize emoji-clock atom sublime zsh_reload)
alias subl 'open -a Sublime\ Text'
source $ZSH/oh-my-zsh.sh


# User configuration

export PATH=$HOME/bin:/usr/local/bin:/opt/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
PATH="/Applications/Emacs.app/Contents/MacOS/Emacs-10.7:$PATH"

ANDROID_HOME=/Users/abruzzi/Public/android-sdk-macosx
export ANDROID_HOME
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

# dracula theme for xcode
DRACULA_THEME=/Users/abruzzi/Repo/dracula-theme
export DRACULA_THEME

# java environments
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
export JAVA_HOME

PATH=$PATH:${GOPATH//://bin:}/bin

# svn enviroments
export SVN_EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(/usr/libexec/path_helper -s)
