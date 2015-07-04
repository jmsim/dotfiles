# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

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

alias tg='cd /Users/jingmei/Documents/Codes/tradegecko'
alias ig='cd /Users/jingmei/Documents/Codes/iguana'
alias gk='cd /Users/jingmei/Documents/Codes/gecko'
alias gfd='git fetch upstream && git rebase -i upstream/development && git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias grh='git reset --hard'
alias gg='git grep'
alias gl='git log --graph --pretty=format":%C(yellow)%h%C(blue)%d%Creset %s %C(white) %an, %ar%Creset"'
alias gls='git log --graph --pretty=format":%C(yellow)%h%C(blue)%d%Creset %s %C(white) %an, %ar%Creset" --simplify-by-decoration'
alias gfixup='git commit -am "fixup! $(git log -1 --format='%s')"'
alias gsquash='git commit -am "squash! $(git log -1 --format='%s')"'
alias gri='git rebase -i'
alias zs='screen -R zeus && zeus start'
alias zc='zeus c'
alias fs='foreman start -p 3000'
alias fsi='foreman run rails s -p 5000'
alias fc='foreman run rails console'
alias tl='tail -f log/development.log'
alias frs='foreman run rails s'
alias char='cd /Users/jingmei/Documents/Codes/charmander'
alias bulba='cd /Users/jingmei/Documents/Codes/bulbasaur'

function debon() {
 sed -i '' '10s/.*/<%= javascript_include_tag "lib", debug: false %>/' ~/tradegecko/app/views/application/_footer.html.erb
 sed -i '' '11s/.*/<%= javascript_include_tag "application", debug: false %>/' ~/tradegecko/app/views/application/_footer.html.erb
}

function deboff() {
 sed -i '' '10s/.*/<%= javascript_include_tag "lib"%>/' ~/tradegecko/app/views/application/_footer.html.erb
 sed -i '' '11s/.*/<%= javascript_include_tag "application"%>/' ~/tradegecko/app/views/application/_footer.html.erb
}

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH="HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
