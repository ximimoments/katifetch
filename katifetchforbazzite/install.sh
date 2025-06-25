get_distro_id() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

get_desktop_env() {
  echo "${XDG_SESSION_DESKTOP,,}"  # minusculas
}

is_steam_deck() {
  # Detecta Steam Deck en hardware
  if grep -iq "steam deck" /proc/device-tree/model 2>/dev/null; then
    return 0
  fi
  # También detecta Steam Deck con Bazzite (si alguna variable o archivo es útil)
  # En este caso solo asumimos hardware
  return 1
}

is_bazzite() {
  [[ "$(get_distro_id)" == "bazzite" ]]
}

echo "Welcome to Katifetch installer!"
echo "Select the edition you want to install:"
echo "  1) Bazzite GNOME (Base)"
echo "  2) Steam Deck KDE on Bazzite"
echo "  3) Steam Deck GNOME on Bazzite"
echo "  4) Bazzite KDE Plasma"
echo -n "Choice: "
read -r choice

case "$choice" in
  1)
    if ! is_bazzite; then
      echo "Error: Bazzite GNOME edition only installs on Bazzite."
      exit 1
    fi
    if [[ "$(get_desktop_env)" != "gnome" ]]; then
      echo "Warning: Desktop environment is not GNOME."
    fi
    script_name="katifetchforbazzite-gnome.sh"
    ;;
  2)
    if ! (is_steam_deck && is_bazzite); then
      echo "Error: Steam Deck KDE edition requires Steam Deck hardware with Bazzite."
      exit 1
    fi
    if [[ "$(get_desktop_env)" != "plasma" ]]; then
      echo "Warning: Desktop environment is not KDE Plasma."
    fi
    script_name="katifetchforbazzite-steamdeck-kde.sh"
    ;;
  3)
    if ! (is_steam_deck && is_bazzite); then
      echo "Error: Steam Deck GNOME edition requires Steam Deck hardware with Bazzite."
      exit 1
    fi
    if [[ "$(get_desktop_env)" != "gnome" ]]; then
      echo "Warning: Desktop environment is not GNOME."
    fi
    script_name="katifetchforbazzite-steamdeck-gnome.sh"
    ;;
  4)
    if ! is_bazzite; then
      echo "Error: Bazzite KDE Plasma edition only installs on Bazzite."
      exit 1
    fi
    if [[ "$(get_desktop_env)" != "plasma" ]]; then
      echo "Warning: Desktop environment is not KDE Plasma."
    fi
    script_name="katifetchforbazzite.sh"
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac

echo "Installing Katifetch for ${choice}..."
sudo cp "$script_name" /usr/local/bin/katifetch
sudo chmod +x /usr/local/bin/katifetch

sudo mkdir -p /usr/local/share/katifetch/logos
sudo mkdir -p /usr/local/share/katifetch/themes

echo "Installation complete! Run with 'katifetch'"
