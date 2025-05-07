#!/bin/bash

echo "🎨 Instalando frontend Nexbot..."

cd /root/nexbot/frontend || {
  echo "❌ Caminho do frontend não encontrado. Verifique se a pasta foi clonada corretamente.";
  exit 1;
}

yarn install
yarn build

echo "✅ Frontend instalado com sucesso!"
