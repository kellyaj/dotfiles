autoload -U compinit
compinit
DISABLE_AUTO_TITLE=true

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Navigation
alias projects='cd /Users/akelly/projects'
alias sandbox='cd /Users/akelly/sandbox'
alias dotfiles='cd /Users/akelly/misc/dotfiles'

# Samaritan navigation
alias platform='cd /Users/akelly/projects/samaritan/platformjs'

# Nocorrects
alias npm='nocorrect npm'

# Git commands
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gpr='git pull --rebase'
alias f='git grep'

# tmux related
alias tlsessions='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tmuxrs='tmux rename-session -t'
alias tksession='tmux kill-session -t'

# misc
alias resourcezsh='source ~/.zshrc'
alias ezsh='vim ~/.zshrc'
alias wtf="sed -n '8, 56 p' ~/.zshrc"

tls() {
  print $fg[yellow] "listing tmux sessions..." $fg[cyan]
  tlsessions
}

trs() {
  tmuxrs $1 $2
  print $fg[red] "tmux window" $fg[cyan] $1 $fg[red] "was renamed to" $fg[cyan] $2 "."
}

tk() {
  tksession $1
  print $fg[red] "tmux window" $fg[cyan] $1 $fg[red] "was killed."
}

resource() {
  print $fg[yellow] "re-sourcing zsh..."
  resourcezsh
  print $fg[yellow] "done"
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
eval "$(rbenv init -)"
