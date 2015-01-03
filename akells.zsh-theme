autoload -U colors && colors

PROMPT='%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[green]%}$(git_prompt_info)%{$fg_bold[blue]%} %{$fg_no_bold[magenta]%}☃  %{$reset_color%}'
RPROMPT="%F{cyan}[%*]%f"

ZSH_THEME_GIT_PROMPT_PREFIX="[ %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}%{$fg[red]%}✗%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ]"
