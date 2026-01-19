#!/bin/bash
set -e

echo "Instalando dependências..."
sudo apt update
sudo apt install -y tmux curl

echo "Instalando Task..."
curl -s https://taskfile.dev/install.sh | sh

echo "Criando symlink..."
ln -sf $(pwd)/Taskfile.yml ~/Taskfile.yml