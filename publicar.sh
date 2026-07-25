#!/bin/bash
# Publica los cambios de los prototipos BAC a GitHub Pages.
# Uso: ./publicar.sh "descripción del cambio"
set -e
cd "$(dirname "$0")"
MSG="${1:-Actualización de prototipos}"
git add -A
git commit -m "$MSG" || { echo "Sin cambios que publicar."; exit 0; }
git push
echo "✅ Publicado. En ~1 minuto se actualiza: https://rolvi90.github.io/bac-prototipos/"
