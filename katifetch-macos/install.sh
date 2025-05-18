#!/bin/bash

# Installer for katifetch-macos (macOS)

SOURCE_FILE="katifetchmacos.sh"
INSTALL_PATH="/usr/local/bin/katifetch"

echo "📦 Installing katifetch..."

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "❌ Error: $SOURCE_FILE not found."
    exit 1
fi

# Create directory if not exists
sudo mkdir -p /usr/local/bin

# Copy and rename
sudo cp "$SOURCE_FILE" "$INSTALL_PATH"

# Make executable
sudo chmod +x "$INSTALL_PATH"

echo "✅ katifetch has been installed successfully!"
echo "You can now run it by typing: katifetch"
