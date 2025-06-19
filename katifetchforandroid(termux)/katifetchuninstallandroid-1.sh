#!/data/data/com.termux/files/usr/bin/bash

# Katifetch Uninstaller Script for Termux (Android)

echo "🗑️ Uninstalling Katifetch..."

INSTALL_PATH="$PREFIX/bin/katifetch"
CONFIG_FILE="$HOME/.katifetchrc"
SHARE_DIR="$PREFIX/share/katifetch"

# Remove executable
if [ -f "$INSTALL_PATH" ]; then
    rm "$INSTALL_PATH"
    echo "✔️ Removed executable from $INSTALL_PATH"
else
    echo "ℹ️ No executable found at $INSTALL_PATH"
fi

# Remove shared data (themes, logos)
if [ -d "$SHARE_DIR" ]; then
    rm -rf "$SHARE_DIR"
    echo "✔️ Removed shared directory: $SHARE_DIR"
else
    echo "ℹ️ No shared directory found at $SHARE_DIR"
fi

# Prompt for config removal
if [ -f "$CONFIG_FILE" ]; then
    read -p "❓ Do you want to remove your configuration file ($CONFIG_FILE)? [y/N]: " answer
    if [[ "$answer" == [yY] ]]; then
        rm "$CONFIG_FILE"
        echo "✔️ Configuration file removed."
    else
        echo "ℹ️ Configuration file kept."
    fi
else
    echo "ℹ️ No configuration file found."
fi

echo -e "\n✅ Katifetch has been fully uninstalled from your system."
