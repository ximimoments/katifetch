#!/bin/bash

# Uninstaller for katifetch-macos (macOS)

INSTALL_PATH="/usr/local/bin/katifetch"

echo "🗑️  Uninstalling katifetch..."

if [ -f "$INSTALL_PATH" ]; then
    sudo rm "$INSTALL_PATH"
    echo "✅ katifetch has been removed."
else
    echo "⚠️  katifetch was not found at $INSTALL_PATH."
fi
