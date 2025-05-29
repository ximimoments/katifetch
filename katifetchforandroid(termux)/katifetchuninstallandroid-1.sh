#!/data/data/com.termux/files/usr/bin/bash

# Katifetch Uninstaller Script for Termux (Android)

echo "🗑️ Uninstalling Katifetch..."

INSTALL_PATH="$PREFIX/bin/katifetch"
CONFIG_FILE="$HOME/.katifetchrc"
SHARE_DIR="$PREFIX/share/katifetch"

if [ -f "$INSTALL_PATH" ]; then
    rm "$INSTALL_PATH"
    echo "✔️ Katifetch executable removed from $INSTALL_PATH"
else
    echo "ℹ️ No executable found at $INSTALL_PATH"
fi

if [ -d "$SHARE_DIR" ]; then
    rm -rf "$SHARE_DIR"
    echo "✔️ Removed themes and logos directory at $SHARE_DIR"
fi

if [ -f "$CONFIG_FILE" ]; then
    read -p "❓ Do you want to remove the configuration file ($CONFIG_FILE)? [y/N]: " answer
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        rm "$CONFIG_FILE"
        echo "✔️ Configuration file removed."
    else
        echo "ℹ️ Configuration file kept."
    fi
fi

echo "✅ Katifetch has been uninstalled."

