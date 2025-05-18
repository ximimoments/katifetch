#!/bin/bash

# Katifetch Uninstaller Script

echo "Uninstalling Katifetch..."

# Default install path
INSTALL_PATH="/usr/local/bin/katifetch"

# Config file path
CONFIG_FILE="$HOME/.katifetchrc"

# Remove the executable
if [ -f "$INSTALL_PATH" ]; then
    sudo rm "$INSTALL_PATH"
    echo "✔️ Katifetch executable removed from $INSTALL_PATH"
else
    echo "ℹ️ No executable found at $INSTALL_PATH"
fi

# Ask to delete config file
if [ -f "$CONFIG_FILE" ]; then
    read -p "Do you want to remove the configuration file ($CONFIG_FILE)? [y/N]: " answer
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        rm "$CONFIG_FILE"
        echo "✔️ Configuration file removed."
    else
        echo "ℹ️ Configuration file kept."
    fi
fi

echo "✅ Katifetch has been uninstalled."
