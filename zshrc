# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# aliases
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
alias git="hub"
alias gbo="git browse"
alias fuck='eval $(thefuck $(fc -ln -1))'
alias v='vim $(fzf)'
alias io='iojs'
alias proxynow='export https_proxy=127.0.0.1:12441 & export http_proxy=127.0.0.1:12441'
alias tryproxy='curl -o /dev/null www.google.com'
alias px4='proxychains4'
# replace recursively with sed
alias rep='function _replace(){ eval "find . -type f -name \"*.$1\" -exec sed -i \"\" s/$2/$3/g {} +";};_replace'
alias repall='function _replaceAll(){ eval "LC_ALL=C find . -type f -name \"*\" -exec sed -i \"\" s/$1/$2/g {} +";};_replaceAll'
alias repicon='function _replaceAll(){ eval "LC_ALL=C find . -type f -name \"*\" -exec sed -i \"\" s/icon-$1/icon-$2/g {} +";};_replaceAll'
alias pyserver='python -m SimpleHTTPServer 8000'
alias uploadstock='scp -r /Users/abruzzi/Company/jimustock-dashboard/dist node.jm:/home/heyang/jimustock'
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
plugins=(git mvn osx autojump cp brew colorize atom sublime)

source $ZSH/oh-my-zsh.sh

# User configuration

# git-radar
export PROMPT="$PROMPT$(git-radar --zsh --fetch) "

export PATH=$HOME/bin:/usr/local/bin:$PATH
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
#
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.nvm/nvm.sh
nvm alias default 0.12.2
# xcode theme
DRACULA_THEME=/Users/abruzzi/Public/dracula-theme
export DRACULA_THEME

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
PATH="/Applications/Emacs.app/Contents/MacOS/Emacs-10.7:$PATH"

# PhantomJS Enviroment
# PHANTOMJS_BIN=/usr/local/Cellar/phantomjs/2.0.0/bin
PHANTOMJS_BIN=/usr/local/bin/phantomjs
export PHANTOMJS_BIN
PATH=$PATH:$PHANTOMJS_BIN

# Java Environment
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
export JAVA_HOME
PATH=$PATH:$JAVA_HOME
JIMUBOX_SETTINGS_FILE=/Users/abruzzi/Company/jimubox-migration/jimubox_settings.properties
export JIMUBOX_SETTINGS_FILE
PATH=$PATH:$JIMUBOX_SETTINGS_FILE
JIMUBOX_ENVIRONMENTS_FILE=$HOME/Company/jimubox-migration/jimubox_environments.properties
export JIMUBOX_ENVIRONMENTS_FILE
PATH=$PATH:$JIMUBOX_ENVIRONMENTS_FILE
ACTIVATOR=$HOME/Public/activator-1.2.2
export ACTIVATOR
PATH=$PATH:$ACTIVATOR
# IDEA=/Applications/IntelliJ\ IDEA\ 13.app/Contents/MacOS
# export IDEA
# PATH=$PATH:$IDEA
. /Users/abruzzi/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Added by termtile (https://github.com/apaszke/termtile)
alias ul='osascript ~/.termtile/tile.scpt up left'
alias ur='osascript ~/.termtile/tile.scpt up right'
alias dl='osascript ~/.termtile/tile.scpt down left'
alias dr='osascript ~/.termtile/tile.scpt down right'
alias ll='osascript ~/.termtile/tile.scpt left'
alias rr='osascript ~/.termtile/tile.scpt right'
alias up='osascript ~/.termtile/tile.scpt up'
alias down='osascript ~/.termtile/tile.scpt down'
alias big='osascript ~/.termtile/resize.scpt '
alias cen='osascript ~/.termtile/center.scpt '
alias max='osascript ~/.termtile/maximize.scpt '
