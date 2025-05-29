#!/data/data/com.termux/files/usr/bin/bash

# Katifetch auto-updater for Termux (Android)
# Author: ximimoments

REPO="https://github.com/ximimoments/katifetch"
TMP_DIR="$HOME/katifetch-tmp"
INSTALL_DIR="$PREFIX/bin"

echo "🔄 Checking for updates..."

rm -rf "$TMP_DIR"
git clone --depth=1 "$REPO" "$TMP_DIR" >/dev/null 2>&1

if [ ! -d "$TMP_DIR" ]; then
    echo "❌ Failed to fetch the latest version."
    exit 1
fi

# Copy the main katifetchforandroid script and overwrite
cp "$TMP_DIR/katifetch" "$INSTALL_DIR/katifetch"
chmod +x "$INSTALL_DIR/katifetch"

# Copy themes and logos too
cp -r "$TMP_DIR/themes/"* "$PREFIX/share/katifetch/themes/"
cp -r "$TMP_DIR/logos/"* "$PREFIX/share/katifetch/logos/"

rm -rf "$TMP_DIR"

echo "✅ Katifetch has been updated successfully."
echo "🚀 Run it now: katifetch"

