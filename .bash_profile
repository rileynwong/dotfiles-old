# ssh
alias eniac='ssh wongn@eniac.seas.upenn.edu'
alias ssh120='ssh cis120@croniac.seas.upenn.edu'

# shortcuts
alias 391="cd ~/Documents/cis391/"
alias 191="cd ~/Documents/cis191/"

alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias ip="cd ~/Documents/internet-party/internet-party/repo"
alias pg="cd ~/Documents/poetry-generator/poetry-generator"
alias bash="vim ~/.bash_shortcuts"
alias h4i="cd ~/hack4impact"
alias cac="cd ~/hack4impact/cac/clean-air-council; source venv/bin/activate"

# git shortcuts
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"

# encouraging messages
alias sigh="echo it\'s okay nancy you can do it :^)"


export PATH=/usr/local/bin:$PATH
export PATH="$(brew --prefix git)/bin:$PATH"

# Usage:
#   > sync master gh-pages
# Equivalent to:
#   > git push origin master
#   > git checkout gh-pages
#   > git rebase master
#   > git push origin gh-pages
#   > git checkout master
 
function sync {
  git push origin $1
  git checkout $2
  git rebase $1
  git push origin $2
  git checkout $1
}
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
