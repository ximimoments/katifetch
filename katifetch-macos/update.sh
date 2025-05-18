#!/bin/bash

# Updater for katifetch-macos (macOS)

SOURCE_FILE="katifetch-macos.sh"
INSTALL_PATH="/usr/local/bin/katifetch"

echo "⬆️  Updating katifetch..."

if [ ! -f "$SOURCE_FILE" ]; then
    echo "❌ Error: $SOURCE_FILE not found."
    exit 1
fi

if [ ! -f "$INSTALL_PATH" ]; then
    echo "⚠️  katifetch is not installed. Please run install.sh first."
    exit 1
fi

# Replace file
sudo cp "$SOURCE_FILE" "$INSTALL_PATH"

# Ensure executable
sudo chmod +x "$INSTALL_PATH"

echo "✅ katifetch has been updated!"
