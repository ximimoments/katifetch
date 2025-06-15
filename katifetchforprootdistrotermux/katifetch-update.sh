#!/bin/bash

# Katifetch auto-updater
# Author: ximimoments

REPO="https://github.com/ximimoments/katifetch"
TMP_DIR="katifetch-tmp"
CONFIG_FILE="$HOME/.katifetchrc"

echo "🔄 Checking for updates..."

# Detect Termux/proot
if [[ "$HOME" == "/data/data/com.termux/files/home" ]]; then
    echo "📱 Detected Termux environment"
fi

# Remove previous temporary clone
rm -rf "$TMP_DIR"

# Clone the latest version
if ! git clone --depth=1 "$REPO" "$TMP_DIR" >/dev/null 2>&1; then
    echo "❌ Failed to fetch the latest version."
    exit 1
fi

# Copy core files
echo "📂 Updating files..."
cp -r "$TMP_DIR/"* ./ 2>/dev/null

# Preserve user config
if [ -f "$CONFIG_FILE" ] && [ -f "./.katifetchrc" ]; then
    echo "⚙️  Preserving your existing .katifetchrc"
    rm -f ./.katifetchrc
fi

# Clean up
rm -rf "$TMP_DIR"

echo ""
echo "✅ Katifetch has been updated successfully!"
echo "🚀 Run it now: katifetch"

read -p "Do you want to run Katifetch now? (y/n): " runnow
[[ "$runnow" == "y" || "$runnow" == "Y" ]] && katifetch

