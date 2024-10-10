# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Git stops working after every Big Sur update
alias bigsur="xcode-select --install"

# Laravel
# alias phpunit="./vendor/bin/phpunit"
# alias pest="./vendor/bin/pest"
# alias pint="./vendor/bin/pint"
# alias a="php artisan"
# alias m="php artisan migrate"
# alias q="php artisan queue:work"
# alias mfs="php artisan migrate:fresh --seed"
# alias testp="php artisan test --parallel"
# alias cda="composer dump-autoload"


# Laravel Sail
# alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
# alias phpunit="sail ./vendor/bin/phpunit"
# alias pest="sail ./vendor/bin/pest"
# alias pint="sail ./vendor/bin/pint"
# alias a="sail artisan"
# alias m="sail artisan migrate"
# alias q="sail artisan queue:work"
# alias mfs="sail artisan migrate:fresh --seed"
# alias testp="php artisan test --parallel"
# alias dev="sail npm run dev"
# alias phpstan="./vendor/bin/phpstan"
# alias pint="./vendor/bin/pint"

# Rails
alias dev="bin/dev"
alias m="bundle exec rails db:migrate"
alias cache="bundle exec rails dev:cache"
alias c="bundle exec rails console"
alias g="bundle exec rails g"

# Docker
alias tpallup="docker compose --profile all up -d --build"
alias tpstop="docker compose --profile all stop"
alias tpup="docker compose up --build"
alias tpupd="docker compose up -d --build"
alias tpsh="docker compose exec web sh"
alias dcup="docker compose up -d --build"
alias dcstop="docker compose stop"
alias dockerstop='docker stop $(docker ps -a -q)'

# Git
alias gac='git add -A && git commit -m'
alias gs='git status'
alias master='git checkout master && git pull origin master'
alias staging='git checkout staging && git fetch && git reset --hard origin/staging'

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH=~/.composer/vendor/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Herd injected NVM configuration
export NVM_DIR="/Users/arthur/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/arthur/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/arthur/Library/Application Support/Herd/bin/":$PATH
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
