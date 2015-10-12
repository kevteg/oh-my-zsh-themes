# Mi primer tema de zsh :D
local return_code="%(?..%{$fg[red]%}% ✖%{$reset_color%})"

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╔%{$fg_bold[white]%}[%{$reset_color%}%{$fg_bold[cyan]%}%n %{$reset_color%}%{$fg_bold[gray]%}at%{$reset_color%} %{$fg_bold[cyan]%}%m%{$fg_bold[white]%}]%{$reset_color%} %{$fg_bold[cyan]%}[%{$reset_color% %{$fg_no_bold[green]%}%3~%{$fg_bold[cyan]%}]%{$reset_color%} ${git_branch}
╚%{$fg_bold[white]% "$(echo -n "\xF0\x9F\x9A\x80")" %{$reset_color%} "
RPS1="${return_code}"

# tema git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[yellow]%}✔$fg_bold[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}⚡%{$fg_bold[blue]%}]"
