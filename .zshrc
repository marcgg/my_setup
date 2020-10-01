export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PGHOST=localhost

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export PATH="$PATH:$HOME/.yarn/bin"
export PATH=/usr/local/bin:$PATH

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


# Nvm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# ALIASES
alias refresh='gpull; bundle install; yarn install; rake db:migrate; git add .; git reset --hard;'
alias be='bundle exec'
alias circle='open https://circleci.com/gh/drivy/drivy-rails/tree/`git rev-parse --symbolic-full-name --abbrev-ref HEAD`'

alias cdmgg='cd /Users/marcgg/Dropbox/dev/marcgg.github.com'
alias cdb='cd /Users/marcgg/Dropbox/dev/boxing'

alias gitdc='git diff --color'
alias gpull='git pull --rebase origin master'
alias gpush='git push origin master'
alias g-='git checkout -'
alias gitm='git checkout master'

alias gph='git push origin master; git push heroku master'

alias dstart='foreman start -f Procfile.dev'

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew rails)

source $ZSH/oh-my-zsh.sh

# No autocorrect kthx
unsetopt correct_all

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH

# Rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
