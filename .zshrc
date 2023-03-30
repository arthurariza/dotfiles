export ZSH="$HOME/.oh-my-zsh"

plugins=(git bundler zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Laravel
alias phpunit="./vendor/bin/phpunit"
alias pest="./vendor/bin/pest"
alias pint="./vendor/bin/pint"
alias a="php artisan"
alias m="php artisan migrate"
alias q="php artisan queue:work"
alias mfs="php artisan migrate:fresh --seed"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH=~/.composer/vendor/bin:$PATH
