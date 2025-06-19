#!/bin/bash

# Katifetch WSL Updater

INSTALL_DIR="$HOME/.katifetchwsl"

if [ ! -d "$INSTALL_DIR" ]; then
    echo "❌ Katifetch WSL is not installed."
    exit 1
fi

echo "🔄 Updating Katifetch WSL..."
cp katifetchwsl "$INSTALL_DIR/katifetchwsl"
chmod +x "$INSTALL_DIR/katifetchwsl"
echo "✅ Update complete!"
