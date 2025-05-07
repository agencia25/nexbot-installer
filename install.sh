#!/bin/bash

echo "🚀 INICIANDO INSTALAÇÃO DO NEXBOT PERSONALIZADO..."

# Backend
echo "📦 Instalando dependências do backend..."
cd /root/nexbot/backend || { echo "❌ Pasta backend não encontrada"; exit 1; }
yarn install

echo "⚙️ Iniciando backend com PM2..."
pm2 start yarn --name nexbot_backend -- start

# Frontend
echo "🎨 Instalando dependências do frontend..."
cd /root/nexbot/frontend || { echo "❌ Pasta frontend não encontrada"; exit 1; }
yarn install

echo "🛠️ Gerando build do frontend..."
yarn build

echo "✅ NEXBOT atualizado com sucesso!"
