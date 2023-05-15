export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(git bundler zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Git stops working after every Big Sur update
alias bigsur="xcode-select --install"

# Aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Laravel
alias phpunit="./vendor/bin/phpunit"
alias pest="./vendor/bin/pest"
alias pint="./vendor/bin/pint"
alias a="php artisan"
# alias m="php artisan migrate"
alias q="php artisan queue:work"
alias mfs="php artisan migrate:fresh --seed"
alias testp="php artisan test --parallel"
alias cda="composer dump-autoload"

# Rails
alias dev="bin/dev"
alias m="bundle exec rails db:migrate"
alias db="bundle exec rails db:"
alias cache="bundle exec rails dev:cache" 
alias c="bundle exec rails console"
alias g="bundle exec rails g"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH=~/.composer/vendor/bin:$PATH
