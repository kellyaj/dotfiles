# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Navigation
alias projects='cd /Users/akelly/projects'
alias sandbox='cd /Users/akelly/sandbox'

# Samaritan navigation
alias platform='cd /Users/akelly/projects/samaritan/platformjs'

# Nocorrects
alias npm='nocorrect npm'

# Git commands
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gpr='git pull --rebase'

# misc
alias resource='source ~/.zshrc'
alias ezsh='vim ~/.zshrc'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
