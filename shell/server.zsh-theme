right_triangle() {
   echo $'\ue0b0'
}

prompt_indicator() {
   echo $'%B ╰─>%b'
}

arrow_start() {
   echo "%{$FG[$ARROW_FG]%}%{$BG[$ARROW_BG]%}%B"
}

arrow_end() {
   echo "%b%{$reset_color%}%{$FG[$NEXT_ARROW_FG]%}%{$BG[$NEXT_ARROW_BG]%}$(right_triangle)%{$reset_color%}"
}

ok_username() {
   ARROW_FG="016"
   ARROW_BG="043"
   NEXT_ARROW_BG="016"
   NEXT_ARROW_FG="043"
   echo "$(arrow_start)  $(arrow_end)"
}

err_username() {
   ARROW_FG="016"
   ARROW_BG="009"
   NEXT_ARROW_BG="016"
   NEXT_ARROW_FG="009"
   echo "$(arrow_start)  $(arrow_end)"
}

# return err_username if there are errors, ok_username otherwise
username() {
   echo "%(?.$(ok_username).$(err_username))"
}

directory() {
   ARROW_FG="043"
   ARROW_BG="016"
   [[ -n "$(git_prompt_info)" ]] && NEXT_ARROW_BG="171" || NEXT_ARROW_BG=""
   NEXT_ARROW_BG=""
   NEXT_ARROW_FG="016"
   [[ "$PWD" = "$HOME" ]] && DIR_PATH="" || DIR_PATH=" %2~"
   echo "$(arrow_start) $DIR_PATH $(arrow_end)"
}

current_time() {
   echo "%{$fg[white]%}%*%{$reset_color%}"
}

git_prompt() {
   ARROW_FG="043"
   ARROW_BG=""
   NEXT_ARROW_BG=""
   NEXT_ARROW_FG="171"
   [[ -n "$(git_prompt_info)" ]] && prompt="$(arrow_start)  $(git_prompt_info)" || prompt=""
   echo $prompt
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# set the git_prompt_status text
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} ✱%{$reset_color%}"

PROMPT='$(username)$(directory)$(git_prompt)
$(prompt_indicator) '
RPROMPT='$(git_prompt_status) $(current_time)'
