#!/usr/bin/env bash
# install.sh – Universal installer for Katifetch
# Works on standard Linux and Termux/proot‑distro environments

set -euo pipefail

# ---------------------------
# Helper: detect sudo/root
# ---------------------------
if command -v sudo >/dev/null 2>&1; then
  SUDO="sudo"
else
  # No sudo available. If not running as root, print warning.
  if [ "$(id -u)" -ne 0 ]; then
    echo "⚠️  'sudo' not found and you are not root. Some operations may fail."
  fi
  SUDO=""  # Empty for direct execution
fi

# ---------------------------
# Installation prefix (override with PREFIX=/path)
# ---------------------------
PREFIX="${PREFIX:-/usr/local}"
INSTALL_DIR="$PREFIX/bin"
SHARE_DIR="$PREFIX/share/katifetch"
THEME_DIR="$SHARE_DIR/themes"
LOGO_DIR="$SHARE_DIR/logos"

# ---------------------------
# Create directories
# ---------------------------
echo "Creating directories in $PREFIX …"
$SUDO mkdir -p "$INSTALL_DIR" "$THEME_DIR" "$LOGO_DIR"

# ---------------------------
# Copy main executable
# ---------------------------
echo "Installing katifetch binary …"
$SUDO cp katifetch.sh "$INSTALL_DIR/katifetch"
$SUDO chmod +x "$INSTALL_DIR/katifetch"

# ---------------------------
# Copy assets
# ---------------------------
echo "Copying themes and logos …"
$SUDO cp -r themes/* "$THEME_DIR" 2>/dev/null || true
$SUDO cp -r logos/* "$LOGO_DIR" 2>/dev/null || true

# ---------------------------
# Default user configuration
# ---------------------------
if [ ! -f "$HOME/.katifetchrc" ]; then
  echo "Installing default configuration to $HOME/.katifetchrc …"
  cp .katifetchrc "$HOME/.katifetchrc"
fi

# ---------------------------
# Termux / proot‑distro notice
# ---------------------------
if [[ "$HOME" == "/data/data/com.termux/files/home" ]]; then
  echo "📱 Detected Termux environment (proot‑distro). No 'sudo' needed."
  echo "ℹ️  If \"katifetch\" is not found immediately, restart Termux or run: source ~/.profile"
fi

echo "\n✅ Installation complete!  Run 'katifetch' to test it.\n"

cat <<'ASCII_ART'
     ___           ___                                                    ___                         ___           ___     
    /  /\         /  /\          ___            ___         ___          /  /\          ___          /  /\         /  /\    
   /  /:/        /  /::\        /__/\          /__/\       /  /\        /  /::\        /__/\        /  /::\       /  /:/    
  /  /:/        /  /:/\:\       \  \:\         \__\:\     /  /::\      /  /:/\:\       \  \:\      /  /:/\:\     /  /:/     
 /  /::\____   /  /::\ \:\       \__\:\        /  /::\   /  /:/\:\    /  /::\ \:\       \__\:\    /  /:/  \:\   /  /::\ ___
/__/:/\:::::\ /__/:/\:\_\:\      /  /::\    __/  /:/\/  /  /::\ \:\  /__/:/\:\ \:\      /  /::\  /__/:/ \  \:\ /__/:/\:\  /\
\__\/~|:|~~~~ \__\/  \:\/:/     /  /:/\:\  /__/\/:/~~  /__/:/\:\ \:\ \  \:\ \:\_\/     /  /:/\:\ \  \:\  \__\/ \__\/  \:\/:/
   |  |:|          \__\::/     /  /:/__\/  \  \::/     \__\/  \:\_\/  \  \:\ \:\      /  /:/__\/  \  \:\            \__\::/ 
   |  |:|          /  /:/     /__/:/        \  \:\          \  \:\     \  \:\_\/     /__/:/        \  \:\           /  /:/  
   |__|:|         /__/:/      \__\/          \__\/           \__\/      \  \:\       \__\/          \  \:\         /__/:/   
    \__\|         \__\/                                                  \__\/                       \__\/         \__\/    
    Katifetch – Universal Installer For Proot-DIstro
ASCII_ART

