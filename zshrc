# Navigation:
#   projects               /Users/akelly/projects
#   sandbox                /Users/akelly/sandbox
#   dotfiles               /Users/akelly/misc/dotfiles
#   platform               SMI platformjs
#   devops                 /Users/akelly/devops
#
# Git Commands:
#   gco                    git checkout
#   gd                     git diff
#   gds                    git diff --staged
#   gpr                    git pull --rebase
#   f some_string          git grep "some_string"
#
# Tmux:
#   ta some_session        will attach to tmux session named 'some_session'
#
# Misc:
#   ezsh                   will open this file for editing
#   t                      tree
#
# Functions:
#   cs session_name        creates a session with name 'session_name'
#   tls                    lists all tmux sessions
#   trs old_name new_name  renames session 'oldname' to 'newname'
#   tk session_name        kills session 'session_name'
#   savechanges            copies ~/.zshrc to the dotfiles folder
#   resource               source ~/.zshrc
#   pdf                    pushes dotfiles upon confirmation
#   ec2 user@instance      ssh into an ec2 instance using /devops/keypairs

autoload -U compinit
compinit
DISABLE_AUTO_TITLE=true

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Navigation:
alias projects='cd /Users/akelly/projects'
alias sandbox='cd /Users/akelly/sandbox'
alias dotfiles='cd /Users/akelly/misc/dotfiles'
alias devops='cd /Users/akelly/devops'

# Project navigation:
alias platform='cd /Users/akelly/projects/samaritan/platformjs'
alias deckepic='cd /Users/akelly/projects/deck_epic'

# Project commands:
alias gbd='grunt buildDev'

# Git commands:
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gpr='git pull --rebase'
alias f='git grep'

# Tmux related:
alias tlsessions='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tmuxrs='tmux rename-session -t'
alias tksession='tmux kill-session -t'

#rails
alias bi='bundle install'
alias be='bundle exec'

# misc
alias savezsh='cp ~/.zshrc /Users/akelly/misc/dotfiles/zshrc'
alias resourcezsh='source ~/.zshrc'
alias ezsh='vim ~/.zshrc'
alias subl='sublime'
alias wtf="sed -n '1, 30 p' ~/.zshrc"
alias ec2='ssh -i /Users/akelly/devops/keypairs/kellyaj-key-pair.pem'

# Nocorrects
alias npm='nocorrect npm'
alias knife='nocorrect knife'

# other
alias t='tree'


# Functions
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

savechanges() {
  print $fg[yellow] "saving changes to zshrc..."
  savezsh
}

resource() {
  print $fg[yellow] "re-sourcing zsh..."
  resourcezsh
  print $fg[yellow] "done"
}

cs() {
  tmux new-session -s $1
}

pdf() {
  dotfiles
  git --no-pager diff
  print $fg[red] "good to push?: "
  read ans
  if [[ "${ans}" == "y" || "${ans}" == "yes" ]]; then
    print $fg[yellow] "pushing dotfiles..."
    git add -A
    print $fg[yellow] "enter a commit message: "
    read cm
    git commit -m "${cm}"
    git pull --rebase
    git push
  else
    print $fg[red] "nothing was pushed."
  fi
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
