# Bash Aliases File - Heavily based on same file github.com/damian/dotfiles/

# Navigation
alias ll="ls -l"
alias lla="ls -la"
alias ..="cd .."


# bashrc & vimrc
alias pr="vim ~/.bash_aliases"
alias rl="source ~/.bash_aliases"
alias c='clear'

# Git
alias g="git"
alias gs="git status "
alias ga="git add "
alias gb="git branch "
alias gc="git commit "
alias gd="git diff "
alias go="git checkout "
alias gbs="git for-each-ref --sort=-committerdate refs/heads/ | less"
alias gfo="git fetch origin"

#Docker

alias dc="docker-compose"
alias dcr="docker-compose run"
alias dcrk="docker-compose run web bundle exec rake"
alias dcrc="docker-compose run web bundle exec rails console"

# Bundler
alias b="bundle"
alias be="bundle exec "

# Rails
alias ss='script/server'
alias sc='script/console'
alias rr='rake routes'
alias migrate='rake db:migrate'
alias tlf='tail -f'

# Directory Navigation

alias batnut='cd ~/src/batnut'
alias gspringclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# Bash prompt

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW\$(parse_git_branch)\$ $NO_COLOUR"
# Edit bash_aliases
alias ba="vim ~/.bash_aliases"

# Edit vimconfig
alias vr="vim ~/.vimrc"

# Custom grep
alias dgrep="grep -lir --exclude=\*.svn\* --exclude=\*.swp --exclude=\*.log"

# Find all files below the current directory whose name contains
alias dfind="find . -name"

# Open folder
alias o="nautilus"

# Clone production
alias backup_url="heroku pg:backups public-url"
alias restore_from_url="echo heroku pg:backups restore URL  DATABASE_URL"
