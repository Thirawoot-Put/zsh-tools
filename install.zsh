# Add bin to PATH if not exists
if ! printenv PATH | grep -q "$HOME/zsh-tools/bin"; then
  echo '# Add zsh-tools bin to PATH' >> ~/.zshrc
  echo 'export PATH="$HOME/zsh-tools/bin:$PATH"' >> ~/.zshrc
fi

# Source loader
if ! grep -q "zsh-tools/functions/_loader.zsh" ~/.zshrc; then
  echo '# Source zsh-tools loader' >> ~/.zshrc
  echo '[[ -f "$HOME/zsh-tools/functions/_loader.zsh" ]] && source "$HOME/zsh-tools/functions/_loader.zsh"' >> ~/.zshrc
fi

echo "zsh-tools installed. Restart terminal or run 'source ~/.zshrc' to use it."
