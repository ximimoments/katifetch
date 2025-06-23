#!/usr/bin/env bash

# install.sh - Installer for Katifetch

set -e

# Define installation directories
INSTALL_DIR="/usr/local/bin"
SHARE_DIR="/usr/local/share/katifetch"
THEME_DIR="$SHARE_DIR/themes"
LOGO_DIR="$SHARE_DIR/logos"

# Create directories
echo "Creating directories..."
sudo mkdir -p "$INSTALL_DIR"
sudo mkdir -p "$THEME_DIR"
sudo mkdir -p "$LOGO_DIR"

# Copy main script
echo "Installing katifetch..."
sudo cp katifetch.sh "$INSTALL_DIR/katifetch"
sudo chmod +x "$INSTALL_DIR/katifetch"

# Copy themes and logos
echo "Copying themes and logos..."
sudo cp -r themes/* "$THEME_DIR"
sudo cp -r logos/* "$LOGO_DIR"

# Copy or create default config
if [ ! -f "$HOME/.katifetchrc" ]; then
  echo "Installing default configuration to ~/.katifetchrc..."

  if [ -f ".katifetchrc" ]; then
    cp .katifetchrc "$HOME/.katifetchrc"
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

echo ""
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
     Katifetch for Linux
EOF
echo ""
