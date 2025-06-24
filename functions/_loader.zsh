# Load all zsh functions in the ~/.config/zsh/functions directory
for file in "${0:A:h}"/*.zsh; do
  if [[ "$file" == *"/_loader.zsh" ]]; then
    continue
  fi

  source "$file"
  echo "Loading $file"
done
