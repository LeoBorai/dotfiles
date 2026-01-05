# 1. Copy this file into $ZSH_CUSTOM/themes/leoborai.zsh-theme
# 2. Open ~/.zshrc and update the ZSH_THEME variable. E.g. ZSH_THEME="leoborai"
# 3. Load configuration. source ~/.zshrc

PROMPT='%(?:%{$fg_bold[green]%}%1{𐲖%}:%{$fg_bold[red]%}%1{𐲖%}) %{$fg[cyan]%}%c%{$reset_color%}'
PROMPT+=' $(git_prompt_info)% '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[gray]%}⌥[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[gray]%}] %{$fg[yellow]%}%1{✖︎%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[gray]%}]"
