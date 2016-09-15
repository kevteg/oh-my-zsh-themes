COLOR_FONDO_CONTEXTO="$BG[241]"
COLOR_FONDO_DIRECCION="$BG[030]"
COLOR_TEXTO_CONTEXTO="$FG[253]"
COLOR_AT_CONTEXTO="$FG[250]"
COLOR_TEXTO_DIRECCION="$FG[232]"
COLOR_TEXTO_GITHUB="$FG[232]"
COLOR_FONDO_GITHUB="$BG[035]"
COLOR_FONDO_ICONO=""
COLOR_FONDO_SEPARADOR=""
COLOR_TEXTO_SEPARADOR=""
COLOR_PUNTA="$FG[255]"

ICONO_SEPARADOR="" #Si necesita un separador entre secciones
ICONO_GIT_DIRTY="⚡"
ICONO_GIT_CLEAN="✔"
OK_ICON="✔"
FAIL_ICON="✖"
ICONO="❭"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$COLOR_TEXTO_GITHUB($fg_bold[green]$ICONO_GIT_CLEAN$COLOR_TEXTO_GITHUB"
ZSH_THEME_GIT_PROMPT_DIRTY="$COLOR_TEXTO_GITHUB($fg_bold[yellow]$ICONO_GIT_DIRTY$COLOR_TEXTO_GITHUB"

#%~ Directorio actual para zsh

local sep='%{$COLOR_FONDO_SEPARADOR$COLOR_TEXTO_SEPARADOR$ICONO_SEPARADOR%}'
local git_branch='%{$COLOR_FONDO_GITHUB$(git_prompt_info)$reset_color%}'
local contexto='%{$COLOR_FONDO_CONTEXTO$COLOR_TEXTO_CONTEXTO%n$COLOR_AT_CONTEXTO〉$COLOR_FONDO_CONTEXTO$COLOR_TEXTO_CONTEXTO%m$reset_color%}'
local at='%{@%}'
local direccion='%{$COLOR_FONDO_DIRECCION$COLOR_TEXTO_DIRECCION 3%~ $reset_color%}'
local final="%(?,%{$fg[green]%}%{$ICONO%} %{$reset_color%},%{$fg[red]%}%{$ICONO%} %{$reset_color%})"

inicio(){

PROMPT="⌈${contexto}⌋${at}⌈${direccion}⌋
%{⌊$COLOR_FONDO_ICONO%}${git_branch}${final}"
#Si quiere eliminar el color blanco de todo el texto siguiente a la línea agrega $reset_color% al final de la linea de arriba

}
inicio
