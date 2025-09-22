#!/usr/bin/env bash
# Updater for Katifetch BSD Edition

TARGET="/usr/local/bin/katifetch"
SCRIPT_NAME="katifetch_bsd.sh"

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root to update Katifetch."
    exit 1
fi

if [ ! -f "$TARGET" ]; then
    echo "Katifetch is not installed. Run the installer first."
    exit 1
fi

cp "$SCRIPT_NAME" "$TARGET" && chmod +x "$TARGET"

if [ $? -eq 0 ]; then
    echo "Katifetch updated successfully!"
else
    echo "Update failed."
    exit 1
fi
