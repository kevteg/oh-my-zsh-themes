COLOR_FONDO_CONTEXTO="$BG[024]"
COLOR_FONDO_DIRECCION="$BG[036]"
COLOR_TEXTO_CONTEXTO="$FG[253]"
COLOR_AT_CONTEXTO="$FG[250]"
COLOR_TEXTO_DIRECCION="$FG[232]"
COLOR_TEXTO_GITHUB="$FG[232]"
COLOR_FONDO_GITHUB="$BG[001]"
COLOR_FONDO_ICONO="$BG[024]"
COLOR_FONDO_SEPARADOR=""
COLOR_TEXTO_SEPARADOR=""
COLOR_PUNTA="$FG[255]"

ICONO_SEPARADOR="" #Si necesita un separador entre secciones
ICONO_GIT_DIRTY="⚡"
ICONO_GIT_CLEAN="✔"
OK_ICON="✔" 
FAIL_ICON="✖" 
ICONO="🚀"

ZSH_THEME_GIT_PROMPT_CLEAN="$fg_bold[yellow]$ICONO_GIT_DIRTY$COLOR_TEXTO_GITHUB"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg_bold[yellow]$ICONO_GIT_DIRTY$COLOR_TEXTO_GITHUB"

#%~ Directorio actual para zsh

local sep='%{$COLOR_FONDO_SEPARADOR$COLOR_TEXTO_SEPARADOR$ICONO_SEPARADOR%}'
local git_branch='%{$COLOR_FONDO_GITHUB$COLOR_TEXTO_GITHUB$(git_prompt_info)$reset_color%}'
local contexto='%{$COLOR_FONDO_CONTEXTO$COLOR_TEXTO_CONTEXTO%n$COLOR_AT_CONTEXTO at $COLOR_FONDO_CONTEXTO$COLOR_TEXTO_CONTEXTO%m$reset_color%}'
local direccion='%{$COLOR_FONDO_DIRECCION$COLOR_TEXTO_DIRECCION %~ $reset_color%}'
local final="%(?,%{$fg[green]%}%{$ICONO%} %{$reset_color%},%{$fg[red]%}%{$ICONO%} %{$reset_color%})"

#RPROMPT_PREFIX='%{'$'\e[1A''%}' # one line up
#RPROMPT_SUFFIX='%{'$'\e[1B''%}' # one line down
inicio(){

PROMPT="${sep}${contexto}${sep}${direccion}${sep}${git_branch}${sep}
%{$COLOR_FONDO_ICONO%}${final}${COLOR_PUNTA}❭ "
#Si quiere eliminar el color blanco de todo el texto siguiente a la línea agrega $reset_color% al final de la linea de arriba

}   
inicio
