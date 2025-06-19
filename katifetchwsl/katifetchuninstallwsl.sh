#!/bin/bash

# Katifetch WSL Uninstaller

INSTALL_DIR="$HOME/.katifetchwsl"

echo "🗑 Uninstalling Katifetch WSL..."

if [ -d "$INSTALL_DIR" ]; then
    rm -rf "$INSTALL_DIR"
    echo "✅ Files removed."
else
    echo "⚠️ Installation folder not found."
fi

# Remove alias from .bashrc
sed -i '/alias katifetchwsl=/d' "$HOME/.bashrc"
echo "✅ Alias removed."

echo "❎ Katifetch WSL uninstalled."
