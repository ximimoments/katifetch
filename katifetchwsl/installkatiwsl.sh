#!/bin/bash

# Katifetch WSL Installer Script

echo "📥 Installing Katifetch for WSL..."

INSTALL_DIR="$HOME/.katifetchwsl"

if [ -d "$INSTALL_DIR" ]; then
    echo "⚠️ Katifetch WSL is already installed at $INSTALL_DIR"
    exit 1
fi

mkdir -p "$INSTALL_DIR"
cp katifetchwsl "$INSTALL_DIR/katifetchwsl"
chmod +x "$INSTALL_DIR/katifetchwsl"

# Add alias to .bashrc
if ! grep -q "katifetchwsl" "$HOME/.bashrc"; then
    echo "alias katifetchwsl='$INSTALL_DIR/katifetchwsl'" >> "$HOME/.bashrc"
    source "$HOME/.bashrc"
fi

echo "✅ Katifetch WSL installed successfully!"
echo "➡️ Run it with: katifetchwsl"
