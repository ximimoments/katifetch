#!/usr/bin/env bash
# Uninstaller for Katifetch BSD Edition

TARGET="/usr/local/bin/katifetch"

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root to uninstall Katifetch."
    exit 1
fi

if [ -f "$TARGET" ]; then
    rm -f "$TARGET"
    echo "Katifetch has been removed."
else
    echo "Katifetch is not installed."
fi
