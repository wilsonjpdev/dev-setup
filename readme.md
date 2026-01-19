# Automações de Desenvolvimento (Taskfiles)

Este repositório tem como objetivo **centralizar e padronizar todas as automações de desenvolvimento** utilizadas nos meus projetos, usando o **Task (Taskfile.dev)**.

---

## Objetivo

- Centralizar automações de desenvolvimento
- Padronizar comandos entre projetos
- Reduzir erros manuais
- Servir como base reutilizável para novos projetos

---

##  Ferramentas utilizadas

- **Task** – executor de tarefas (alternativa moderna ao `make`)
- **Bash** – para scripts auxiliares
- **curl** – instalação e integrações

---

## Instalação rápida

Execute o script de setup no diretório do projeto:

```bash
./install.sh
```

Esse script irá:

- Atualizar os pacotes do sistema (Ubuntu/Debian)
- Instalar dependências básicas (`tmux`, `git`, `curl`)
- Instalar o **Task**
- Criar um **link simbólico do `Taskfile.yml` na home** (`~/Taskfile.yml`)

---

## Uso básico

Listar todas as tarefas disponíveis:

```bash
task --list
```

Executar uma tarefa:

```bash
task <nome-da-tarefa>
```

Exemplo:

```bash
task setup
task lint
task test
```

---

## 📄 Licença

Uso pessoal. Livre para adaptação conforme necessário.

---