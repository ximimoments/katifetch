#!/usr/bin/env bash
# Installer for Katifetch BSD Edition

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="katifetch_bsd.sh"
TARGET="$INSTALL_DIR/katifetch"

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root to install Katifetch."
    exit 1
fi

# Copy script to /usr/local/bin
cp "$SCRIPT_NAME" "$TARGET" && chmod +x "$TARGET"

if [ $? -eq 0 ]; then
    echo "Katifetch installed successfully!"
    echo "You can now run it using: katifetch"
else
    echo "Installation failed."
    exit 1
fi

