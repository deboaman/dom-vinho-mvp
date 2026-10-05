# Dom Vinho — Cardápio Digital

Cardápio digital com painel administrativo. Single-file, sem build, sem dependência.

## Como usar

- **Cardápio público:** abrir `index.html` (ou a URL pública)
- **Painel administrativo:** abrir `admin.html`

## Publicar alterações

1. Abrir `admin.html` no navegador
2. Entrar (`admin` / senha que você definiu)
3. Editar preços, itens, promoções
4. Clicar "Publicar no cardápio" — baixa `domvinho.html`
5. **Renomear** o arquivo baixado para `index.html` e substituir
6. `git add index.html && git commit && git push`

## Stack

- HTML/CSS/JS puro (single-file)
- Sem build, sem dependência, sem backend
- Dados persistidos em `localStorage` do navegador
- Deploy: Netlify / Cloudflare Pages / GitHub Pages

## Contato

Everton Borgeia Machado
