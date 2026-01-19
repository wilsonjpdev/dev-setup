#!/usr/bin/env sh
set -e

echo "Instalando dependências..."
sudo apt update
sudo apt install -y tmux git curl

echo "Instalando Task..."
curl -fsSL https://github.com/go-task/task/releases/latest/download/task_linux_amd64.tar.gz \
  | tar -xz -C /tmp
sudo mv /tmp/task /usr/local/bin/task
sudo chmod +x /usr/local/bin/task

echo "Criando link simbólico do Taskfile..."
ln -sf "$(pwd)/Taskfile.yml" "$HOME/Taskfile.yml"

echo "Instalação concluída."
