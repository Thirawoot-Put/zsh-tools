cdz() {
  local show_hidden=false
  local arg1="$1"

  if [[ "$arg1" == --* ]]; then
    if [[ "$arg1" == "--show-hidden" ]]; then
      show_hidden=true
      shift
    else
      echo "Unknown option $arg1"
      return 1
    fi
  fi

  local search_root="${1:-$HOME}"
  if [[ ! -d "$search_root" ]]; then
    echo "Error: $search_root is not a directory."
    return 1
  fi

  local -a fd_opts=(
    --type dir 
    --exclude .git 
    --exclude node_modules
    --exclude .cache 
    --exclude .next 
    --exclude .idea 
    --exclude .vscode 
    --exclude .DS_Store
  )
  
  [[ $show_hidden == true ]] && fd_opts+=(--hidden)

  local dir
  dir=$(
    fd "${fd_opts[@]}" . "$search_root"| 
      fzf --preview 'ls -a {}' --preview-window right:40% --height=70%
  ) || return

  cd "$dir"
}
