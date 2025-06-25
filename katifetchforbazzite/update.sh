#!/usr/bin/env bash
set -e

INSTALL_DIR="/usr/local/bin"
SHARE_DIR="/usr/local/share/katifetch"

get_distro_id() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

get_desktop_env() {
  echo "${XDG_SESSION_DESKTOP,,}"
}

is_steam_deck() {
  grep -iq "steam deck" /proc/device-tree/model 2>/dev/null
}

is_bazzite() {
  [[ "$(get_distro_id)" == "bazzite" ]]
}

echo "Katifetch Update Manager"
echo "Select the edition to update:"
echo "  1) Bazzite GNOME (Base)"
echo "  2) Steam Deck KDE on Bazzite"
echo "  3) Steam Deck GNOME on Bazzite"
echo "  4) Bazzite KDE Plasma"
echo -n "Choice: "
read -r choice

case "$choice" in
  1)
    if ! is_bazzite; then
      echo "Error: Bazzite GNOME edition only updates on Bazzite."
      exit 1
    fi
    script_name="katifetchforbazzite-gnome.sh"
    ;;
  2)
    if ! (is_steam_deck && is_bazzite); then
      echo "Error: Steam Deck KDE edition requires Steam Deck hardware with Bazzite."
      exit 1
    fi
    script_name="katifetchforbazzite-steamdeck-kde.sh"
    ;;
  3)
    if ! (is_steam_deck && is_bazzite); then
      echo "Error: Steam Deck GNOME edition requires Steam Deck hardware with Bazzite."
      exit 1
    fi
    script_name="katifetchforbazzite-steamdeck-gnome.sh"
    ;;
  4)
    if ! is_bazzite; then
      echo "Error: Bazzite KDE Plasma edition only updates on Bazzite."
      exit 1
    fi
    script_name="katifetchforbazzite.sh"
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esa
