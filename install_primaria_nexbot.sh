#!/bin/bash

echo "======================================="
echo "🚀 INSTALADOR COMPLETO - NEXBOT"
echo "======================================="

# Entrada de dados
read -p "🔐 Defina a senha do painel e banco de dados: " senha
read -p "🏷️ Nome da empresa/instância: " empresa
read -p "📞 Quantidade de conexões WhatsApp: " conexoes
read -p "👤 Quantidade de usuários: " usuarios
read -p "🌐 Domínio do frontend (sem http): " frontend
read -p "🌐 Domínio do backend (sem http): " backend
read -p "🔌 Porta do frontend (ex: 3000): " porta_front
read -p "🔌 Porta do backend (ex: 4000): " porta_back
read -p "🔌 Porta do Redis/agendamento (ex: 5000): " porta_redis

echo ""
echo "🔧 Atualizando servidor e instalando dependências..."
apt update && apt upgrade -y
apt install -y curl git redis-server

echo "📦 Instalando Node.js v18 LTS e Yarn..."
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
npm install -g yarn pm2

echo "🧠 Clonando repositório Nexbot..."
cd /home
git clone https://github.com/agencia25/Nexbotoriginal.git "$empresa"

echo "🔧 Instalando dependências do backend..."
cd "/home/$empresa/backend"
yarn install

echo "⚙️ Subindo backend com PM2..."
pm2 start yarn --name "${empresa}_backend" -- start

echo "🌐 Instalando dependências do frontend..."
cd "/home/$empresa/frontend"
yarn install

echo "🛠️ Fazendo build do frontend..."
yarn build

echo "✅ Instalação do Nexbot finalizada!"
echo "➡️ Acesse o painel em: http://$frontend:$porta_front"
echo "➡️ Login: admin@admin.com | Senha: 123456"

