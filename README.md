# zsh-tools
A collection of zsh tools both bin and functions

## Prerequisites
- kubectl
- kubectx
- fzf
- jq
- fd

## Installation
### Install prerequisites tools
```bash
brew install fzf jq kubectl kubectx fd
```

```bash
# clone this repository
git clone https://github.com/Thirawoot-Put/zsh-tools.git ~/zsh-tools
cd zsh-tools && ./install.sh
source ~/.zshrc
```

## Environments
run `mkdir -p ~/zsh-tools/envs` in your terminal.

### kflog
```bash
mkdir -p ~/zsh-tools/envs/kflog
touch ~/zsh-tools/envs/kflog/.env
echo "export LOG_DIR="$HOME/Documents/inbox/k8s-logs"" >> ~/zsh-tools/envs/kflog/.env
```

### pgconnect
```bash
mkdir -p ~/zsh-tools/envs/pgconnect
touch ~/zsh-tools/envs/pgconnect/.env
echo "export DB_LIST=(db1 db2 db3)" >> ~/zsh-tools/envs/pgconnect/.env
echo "export ENV_LIST=(dev test prod)" >> ~/zsh-tools/envs/pgconnect/.env
```
env file inside ENV_LIST must contain database connection
