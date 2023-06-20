#!/bin/bash

# Dependências iniciais
sudo apt update && sudo apt install -y wget curl unzip npm

# instalando o ultimo release do nvm
release=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep "tag_name" | cut -d '"' -f 4) # retornar a ultima versão e quarda na variaval
curl "https://raw.githubusercontent.com/nvm-sh/nvm/$release/install.sh" | bash

# Instalando node.js lts
nvm install --lts
nvm list

# baixando master do repositorio do nodeunblocker.com
wget https://github.com/nfriedly/nodeunblocker.com/archive/refs/heads/master.zip
unzip master.zip
rm master.zip

# Movendo-se para o diretorio
cd nodeunblocker.com-master

# Instalando as dependências do repositorio
npm install

# Iniciar servidor
npm start
