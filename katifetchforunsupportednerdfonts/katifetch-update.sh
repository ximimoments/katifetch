#!/bin/bash

# Katifetch auto-updater
# Author: ximimoments

REPO="https://github.com/ximimoments/katifetch"
TMP_DIR="katifetch-tmp"

echo "🔄 Checking for updates..."

# Remove any previous temporary clone
rm -rf "$TMP_DIR"

# Clone the latest version
git clone --depth=1 "$REPO" "$TMP_DIR" >/dev/null 2>&1

if [ ! -d "$TMP_DIR" ]; then
    echo "❌ Failed to fetch the latest version."
    exit 1
fi

# Copy updated files to the current directory
cp -r "$TMP_DIR/"* ./

# Clean up
rm -rf "$TMP_DIR"

echo "✅ Katifetch has been updated successfully."
echo "🚀 Run it now: katifetch"
