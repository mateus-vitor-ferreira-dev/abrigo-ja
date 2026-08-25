#!/usr/bin/env bash
# Confere se sua autoria esta configurada corretamente antes do primeiro commit.

set -u

nome=$(git config user.name || true)
email=$(git config user.email || true)

echo "Verificando configuracao de autoria..."
echo

falhou=0

if [ -z "$nome" ]; then
  echo "  [FALTA] user.name nao configurado"
  echo "          git config user.name \"Seu Nome Completo\""
  falhou=1
else
  echo "  [OK] user.name  = $nome"
fi

if [ -z "$email" ]; then
  echo "  [FALTA] user.email nao configurado"
  echo "          git config user.email \"seu.email@estudante.ufla.br\""
  falhou=1
else
  echo "  [OK] user.email = $email"
fi

echo
if [ "$falhou" -eq 1 ]; then
  echo "Configure antes de commitar. Commit com autoria errada nao conta para voce."
  exit 1
fi

echo "Autores que ja aparecem no historico:"
git log --format='  %an <%ae>' 2>/dev/null | sort -u || echo "  (nenhum commit ainda)"
echo
echo "Confira se o e-mail acima e o mesmo da sua conta do GitHub."
echo "Se nao for, seus commits nao serao vinculados ao seu perfil."
