#!/data/data/com.termux/files/usr/bin/bash
# katifetchforandroid.sh – Katifetch installer for Termux (Android)

set -e  # Exit on error

# Installation paths
INSTALL_DIR="$PREFIX/bin"
SHARE_DIR="$PREFIX/share/katifetch"
THEME_DIR="$SHARE_DIR/themes"
LOGO_DIR="$SHARE_DIR/logos"

# Script's current directory
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

echo "📂 Creating directories..."
mkdir -p "$INSTALL_DIR" "$THEME_DIR" "$LOGO_DIR"

echo "📥 Installing executable as 'katifetch'..."
cp "$SCRIPT_DIR/katifetchforandroid.sh" "$INSTALL_DIR/katifetch"
chmod +x "$INSTALL_DIR/katifetch"

echo "🎨 Copying themes and logos (if available)..."
if [ -d "$SCRIPT_DIR/themes" ]; then
  cp -r "$SCRIPT_DIR/themes/"* "$THEME_DIR"
fi
if [ -d "$SCRIPT_DIR/logos" ]; then
  cp -r "$SCRIPT_DIR/logos/"* "$LOGO_DIR"
fi

if [ ! -f "$HOME/.katifetchrc" ] && [ -f "$SCRIPT_DIR/.katifetchrc" ]; then
  echo "⚙️ Installing default config to ~/.katifetchrc ..."
  cp "$SCRIPT_DIR/.katifetchrc" "$HOME/.katifetchrc"
fi

echo -e "\n✅ Installation complete! Type \033[1mkatifetch\033[0m to launch.\n"

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
    Katifetch for Android (Termux)
EOF
