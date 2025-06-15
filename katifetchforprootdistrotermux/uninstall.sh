#!/bin/bash

# Katifetch Uninstaller Script

set -euo pipefail

# Detect Termux environment
IS_TERMUX=0
if [[ "$HOME" == "/data/data/com.termux/files/home" ]]; then
  IS_TERMUX=1
fi

# Default install path
INSTALL_PATH="/usr/local/bin/katifetch"
CONFIG_FILE="$HOME/.katifetchrc"
THEMES_DIR="/usr/local/share/katifetch/themes"
LOGOS_DIR="/usr/local/share/katifetch/logos"

# Info
echo "🧹 Uninstalling Katifetch..."

# Remove executable
if [ -f "$INSTALL_PATH" ]; then
  if [ "$IS_TERMUX" -eq 1 ]; then
    rm "$INSTALL_PATH"
  else
    sudo rm "$INSTALL_PATH"
  fi
  echo "✔️ Katifetch executable removed from $INSTALL_PATH"
else
  echo "ℹ️ No executable found at $INSTALL_PATH"
fi

# Remove themes and logos if they exist
if [ -d "$THEMES_DIR" ] || [ -d "$LOGOS_DIR" ]; then
  echo "❓ Remove Katifetch themes and logos? (may affect themes in use)"
  read -p "[y/N]: " del_assets
  if [[ "$del_assets" == "y" || "$del_assets" == "Y" ]]; then
    [ -d "$THEMES_DIR" ] && ${IS_TERMUX:+rm -r} ${IS_TERMUX:-sudo rm -r} "$THEMES_DIR"
    [ -d "$LOGOS_DIR" ] && ${IS_TERMUX:+rm -r} ${IS_TERMUX:-sudo rm -r} "$LOGOS_DIR"
    echo "🗑️ Themes and logos removed."
  fi
fi

# Ask to delete config file
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

