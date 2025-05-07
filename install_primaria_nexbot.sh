#!/bin/bash

echo "========================================"
echo "🚀 INSTALADOR PRINCIPAL - NEXBOT"
echo "========================================"
echo ""
echo "Escolha uma opção:"
echo "0 - Instalar Nexbot"
echo "1 - Atualizar Nexbot"
echo "2 - Deletar Nexbot"
echo "3 - Bloquear Nexbot"
echo "4 - Desbloquear Nexbot"
echo "5 - Alterar domínio do Nexbot"
echo ""

read -p "Digite a opção desejada: " opcao

case $opcao in
  0)
    echo "🔐 Defina a senha do painel e banco de dados:"
    read -s senha
    echo "🏷️ Informe o nome da empresa/instância:"
    read empresa
    echo "📞 Quantidade de conexões WhatsApp:"
    read conexoes
    echo "👤 Quantidade de usuários:"
    read usuarios
    echo "🌐 Domínio do frontend:"
    read frontend
    echo "🌐 Domínio do backend:"
    read backend
    echo "🔌 Porta do frontend (ex: 3000):"
    read porta_front
    echo "🔌 Porta do backend (ex: 4000):"
    read porta_back
    echo "🔌 Porta do Redis/agendamento (ex: 5000):"
    read porta_redis

    echo ""
    echo "🚧 Iniciando instalação do Nexbot para '$empresa'..."
    echo "Senha: $senha"
    echo "Conexões: $conexoes | Usuários: $usuarios"
    echo "Frontend: $frontend:$porta_front"
    echo "Backend: $backend:$porta_back"
    echo "Redis (agendamento): porta $porta_redis"

    # Aqui você incluirá os comandos reais de instalação (Node, PM2, build, etc)
    echo "⚙️ (Instalação real do Nexbot será configurada aqui...)"
    ;;
  *)
    echo "❌ Opção inválida ou ainda não implementada."
    ;;
esac
