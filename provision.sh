#!/bin/bash

# Dependências iniciais
sudo apt update && sudo apt install -y curl git

# instalando o ultimo release do nvm
release=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep "tag_name" | cut -d '"' -f 4) # retornar a ultima versão e quarda na variaval
curl -fsSLO https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh && bash install.sh

# Instalando node.js lts
nvm install --lts
nvm list

# Clonando o repositorio do nodeunblocker.com
git clone git@github.com:nfriedly/nodeunblocker.com.git

# Movendo-se para o diretorio
cd nodeunblocker.com

# Instalando as dependências do repositorio
npm install

# Iniciar servidor
npm start
