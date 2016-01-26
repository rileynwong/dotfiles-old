# Path to your oh-my-zsh installation.
export ZSH=/Users/nancywong/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/nancywong/.rvm/gems/ruby-1.9.3-p551/bin:/Users/nancywong/.rvm/gems/ruby-1.9.3-p551@global/bin:/Users/nancywong/.rvm/rubies/ruby-1.9.3-p551/bin:/usr/local/heroku/bin:/usr/local/Cellar/git/2.7.0/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/nancywong/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EDITOR=vim
export VISUAL=vim
alias crontab=“envVIM_CRONTAB=true crontab”

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# ssh
alias eniac='ssh wongn@eniac.seas.upenn.edu'
alias ssh120='ssh cis120@croniac.seas.upenn.edu'

# shortcuts
alias 391="cd ~/Documents/cis391/"
alias 191="cd ~/Documents/cis191/"
alias pi="ssh pi@193.168.2.10"

alias hi=hicat

alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias bash="vim ~/.bash_profile"
alias h4i="cd ~/hack4impact"

# projects
alias cac="cd ~/hack4impact/cac/clean-air-council; source venv/bin/activate"
alias ip="cd ~/Documents/internet-party/internet-party/repo"
alias pg="cd ~/Documents/poetry-generator/poetry-generator"
alias sg="cd ~/projects/story-grapher"

# git shortcuts
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"

# encouraging messages
alias sigh="echo it\'s okay nancy you can do it :\^\)"

# bash commands
mkcd () {
    mkdir "$1"
    cd "$1"
}

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
