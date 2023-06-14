# Provisionamento_nodeunblocker.com

Aqui tem um provisinamento de um Proxy Web chamado nodeunblocker.com

## O que acontece ao executar o provision.sh

1. Instala as dependencias iniciais (curl e git)
1. Instala o ultimo release do nvm
1. Instala node.js lts
1. Clona o repositorio do nodeunblocker.com
1. Instala as dependências do repositorio
1. Inicia o servidor

## Instalação automática

``` bash
wget https://github.com/gabrielnm123/Provisionamento_nodeunblocker.com/raw/main/provision.sh && sudo ./provision.sh
rm provision.sh
```
