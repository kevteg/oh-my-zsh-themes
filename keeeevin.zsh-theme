# Mi primer tema de zsh :D
local return_code="%(%{$fg[red]%} ✖%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby=''

if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╔%{$fg_no_bold[white]%}[%{$fg_bold[cyan]%}%n %{$reset_color%}%{$fg_no_bold[red]%}at%{$reset_color%} %{$fg_bold[cyan]%}%m%{$fg_no_bold[white]%}] %{$fg_no_bold[green]%}%3~${git_branch}
╚⊡ "
RPS1="${return_code}"

# tema git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}⚡%{$fg_bold[blue]%})"

