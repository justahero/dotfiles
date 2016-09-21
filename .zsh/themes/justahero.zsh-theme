
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_MERGING=" %{$fg[blue]%}"

function prompt_char {
  if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

function prompt_rvm {
  rbv=`rvm-prompt`
  rbv=${rbv#ruby-}
  [[ $rbv == *"@"* ]] || rbv="${rbv}@default"
  echo $rbv
}

function git_repo_path {
  git rev-parse --git-dir 2>/dev/null
}

function join {
  local IFS="$1"; shift; echo "$*";
}

function git_mode {
  local repo_path=$(git_repo_path)
  declare -a STATUS
  if [[ -e "$repo_path/BISECT_LOG" ]]; then
    STATUS+=("bisect")
  fi
  if [[ -e "$repo_path/MERGE_HEAD" ]]; then
    STATUS+=("merge")
  fi
  if [[ -e "$repo_path/CHERRY_PICK_HEAD" ]] then
    STATUS+=("cherry-pick")
  fi
  if [[ -e "$repo_path/rebase" || -e "$repo_path/rebase-apply" || -e "$repo_path/rebase-merge" || -e "$repo_path/../.dotest" ]]; then
    STATUS+=("rebase")
  fi

  if [ ${#STATUS[@]} -ne 0 ]; then
    RESULT=$(IFS=$'|'; echo "$STATUS[*]")
    echo "(${RESULT})"
  fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info) %{$fg[yellow]%}$(git_mode)%{$reset_color%}
%_ $(prompt_char) '

# RPROMPT='[%{$fg[yellow]%}$(prompt_rvm)%{$reset_color%} %{$fg[green]%}%*%{$reset_color%}]'
RPROMPT='[%{$fg[green]%}%*%{$reset_color%}]'
