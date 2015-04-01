export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PGHOST=localhost

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a

# Nvm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# ALIASES
alias cdd='cd /Users/marcgg/Documents/code/drivy-rails'
alias cdl='cd /Users/marcgg/Documents/code/perso/life_on_steroids'
alias cdapi='cd /Users/marcgg/Documents/code/perso/my_life_api'
alias be='bundle exec'

alias wps='watch heroku ps -a drivy'

alias gitdc='git diff --color'
alias gpull='git pull --rebase origin develop'
alias gpush='git push origin develop'
alias g-='git checkout -'
alias gitm='git checkout master'
alias gitd='git checkout develop'

alias memcached_start='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'

alias logs='heroku logs -t --app drivy-staging'
alias logp='heroku logs -t --app drivy'
alias hrs='heroku run rails c --app drivy-staging'
alias hrp='heroku run rails c --app drivy'

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump brew rails)

source $ZSH/oh-my-zsh.sh

# No autocorrect kthx
unsetopt correct_all

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
