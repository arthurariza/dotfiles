export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions rails bundler)

source $ZSH/oh-my-zsh.sh

# Aliases

alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Git stops working after every Big Sur update
alias bigsur="xcode-select --install"

# Laravel
# alias phpunit="./vendor/bin/phpunit"
# alias pest="./vendor/bin/pest"
# alias pint="./vendor/bin/pint"
# alias phpstan="./vendor/bin/phpstan"
# alias a="php artisan"
# alias m="php artisan migrate"
# alias q="php artisan queue:work"
# alias mfs="php artisan migrate:fresh --seed"
# alias testp="php artisan test --parallel"
# alias cda="composer dump-autoload"
# alias dev="npm run dev"

# Rails
# alias dev="bin/dev"
# alias m="bundle exec rails db:migrate"
# alias cache="bundle exec rails dev:cache"
# alias c="bundle exec rails console"
# alias g="bundle exec rails g"

# Git
alias gac='git add -A && git commit -m'
alias gs='git status'
# alias master='git checkout master && git pull origin master'
alias main='git checkout $([ `git rev-parse --quiet --verify master` ] && echo "master" || echo "main") && git pull'
alias master='git checkout $([ `git rev-parse --quiet --verify master` ] && echo "master" || echo "main") && git pull'
alias staging='git checkout staging && git fetch && git reset --hard origin/staging'
alias nah='git reset --soft HEAD~1'
alias glog='git log --oneline --graph --decorate --all'
alias wip="git add -A && git commit -m 'Work in progress'"
alias nope='git reset --hard'

# alias gitwork='~/.config/git/gitswitch work'
# alias gitpersonal='~/.config/git/gitswitch personal'
# alias gitconfig='~/.config/git/gitswitch show'

alias ccupg='brew upgrade claude-code'

# Functions

function commit() {
  commitMessage="$*"

  git add .

  if [ "$commitMessage" = "" ]; then
     diff_input=$(echo "=== Summary ===" && git diff --cached --stat && echo -e "\n=== Diff (truncated if large) ===" && git diff --cached | head -c 50000)
     commitMessage=$(echo "$diff_input" | claude --model haiku -p "Write a single-line commit message for this diff. Output ONLY the message, no quotes, no explanation, no markdown.")

     git commit -m "$commitMessage"
     return
  fi

  eval "git commit -a -m '${commitMessage}'"
}

sync_fork() {
 if [[ -z $1 ]]; then
  echo "Usage: sync_fork <branch>"
  return 1
 fi

 git fetch upstream || return 1
 git checkout "$1" || return 1
 git merge "upstream/$1"
 git push origin "$1"
}
alias sf=sync_fork

export TL_GIT_ROOT=~/Dev/Trainline
export PATH=$PATH:$TL_GIT_ROOT/tl/bin

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/arthur/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
