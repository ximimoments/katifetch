#!/bin/bash

echo "🗑️ Uninstalling Katifetch from Haiku OS..."

INSTALL_DIR="/boot/home/config/non-packaged/bin/katifetch"

if [ -f "$INSTALL_DIR" ]; then
    rm "$INSTALL_DIR"
    echo "✅ Katifetch successfully removed."
else
    echo "⚠ Katifetch is not installed."
fi
