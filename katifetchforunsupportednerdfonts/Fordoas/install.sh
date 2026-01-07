#!/usr/bin/env bash

# install.sh - Installer for Katifetch
set -e

# Define installation directories
INSTALL_DIR="/usr/local/bin"
SHARE_DIR="/usr/local/share/katifetch"
THEME_DIR="$SHARE_DIR/themes"
LOGO_DIR="$SHARE_DIR/logos"
BADAPPLE_DIR="$SHARE_DIR/assets/badapple"

# Directory of this installer script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create directories
echo "Creating directories..."
doas mkdir -p "$INSTALL_DIR"
doas mkdir -p "$THEME_DIR"
doas mkdir -p "$LOGO_DIR"
doas mkdir -p "$BADAPPLE_DIR"

# Copy main script
echo "Installing katifetch..."
doas cp "$SCRIPT_DIR/katifetch.sh" "$INSTALL_DIR/katifetch"
doas chmod +x "$INSTALL_DIR/katifetch"

# Copy themes and logos
echo "Copying themes and logos..."
doas cp -r "$SCRIPT_DIR/themes/"* "$THEME_DIR"
doas cp -r "$SCRIPT_DIR/logos/"* "$LOGO_DIR"

# ---- Bad Apple installation ----
if [ -f "$SCRIPT_DIR/assets/kaka.sh" ] && [ -f "$SCRIPT_DIR/assets/badapple_6572frames.ascii.gz" ]; then
  echo "Installing Bad Apple assets..."
  doas cp "$SCRIPT_DIR/assets/kaka.sh" "$BADAPPLE_DIR/"
  doas cp "$SCRIPT_DIR/assets/badapple_6572frames.ascii.gz" "$BADAPPLE_DIR/"
  doas chmod +x "$BADAPPLE_DIR/kaka.sh"
else
  echo "Bad Apple assets not found, skipping."
fi
# --------------------------------

# Copy or create default config
if [ ! -f "$HOME/.katifetchrc" ]; then
  echo "Installing default configuration to ~/.katifetchrc..."
  if [ -f "$SCRIPT_DIR/.katifetchrc" ]; then
    cp "$SCRIPT_DIR/.katifetchrc" "$HOME/.katifetchrc"
  else
    cat > "$HOME/.katifetchrc" <<EOF
# Katifetch default configuration
theme=default
show_logo=yes
show_colors=yes
EOF
  fi
fi

echo "Installation complete! Run 'katifetch' to test it."

# ASCII banner
cat << "EOF"
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
     Katifetch for Linux & BSD
EOF
