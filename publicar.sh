#!/bin/bash
# Pega o domvinho.html baixado do painel e substitui o index.html, commita e pusha
set -e
cd "$(dirname "$0")"

# Acha o HTML mais recente baixado (Downloads ou pasta atual)
CAND=$(ls -t ~/Downloads/domvinho*.html ./domvinho.html 2>/dev/null | head -1)
if [ -z "$CAND" ]; then
  echo "❌ Nenhum domvinho*.html encontrado"
  echo "   1. Abra admin.html"
  echo "   2. Clique 'Publicar no cardápio'"
  echo "   3. Rode este script de novo"
  exit 1
fi

echo "📄 Usando: $CAND"
cp "$CAND" index.html

if git diff --quiet index.html; then
  echo "🟢 Nada mudou desde a última publicação."
  exit 0
fi

git add index.html
git commit -m "update: cardápio publicado em $(date +'%Y-%m-%d %H:%M')"
git push

echo ""
echo "✅ Publicado. Netlify/Cloudflare rebuilda em ~30s."
echo "   URL: https://dom-vinho.netlify.app (ou seu domínio)"
