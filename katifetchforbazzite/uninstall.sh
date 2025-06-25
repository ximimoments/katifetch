#!/usr/bin/env bash
set -e

INSTALL_DIR="/usr/local/bin"
SHARE_DIR="/usr/local/share/katifetch"

echo "Katífetch Uninstaller"
echo "Select the edition to uninstall:"
echo "  1) Bazzite GNOME (Base)"
echo "  2) Steam Deck KDE on Bazzite"
echo "  3) Steam Deck GNOME on Bazzite"
echo "  4) Bazzite KDE Plasma"
echo -n "Choice: "
read -r choice

case "$choice" in
  1|2|3|4)
    echo "Uninstalling Katifetch..."
    sudo rm -f "$INSTALL_DIR/katifetch"
    sudo rm -rf "$SHARE_DIR"
    echo "Uninstallation complete!"
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac
