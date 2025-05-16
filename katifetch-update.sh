#!/bin/bash

# Katifetch auto-updater
# Autor: ximimoments

REPO="https://github.com/ximimoments/katifetch"
TMP_DIR="katifetch-tmp"

echo "🔄 Checking for updates..."

# Eliminar cualquier clon temporal anterior
rm -rf "$TMP_DIR"

# Clonar la última versión del repositorio
git clone --depth=1 "$REPO" "$TMP_DIR" >/dev/null 2>&1

if [ ! -d "$TMP_DIR" ]; then
    echo "❌ Failed to fetch the latest version."
    exit 1
fi

# Sobrescribir los archivos necesarios
cp -r "$TMP_DIR/"* ./

# Limpiar
rm -rf "$TMP_DIR"

echo "✅ Katifetch has been updated to the latest version."
echo "🚀 Run it now: ./katifetch.sh"
