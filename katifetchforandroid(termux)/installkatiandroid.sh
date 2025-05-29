#!/data/data/com.termux/files/usr/bin/bash

# install-android.sh - Katifetch installer for Termux (Android)

set -e

INSTALL_DIR="$PREFIX/bin"
SHARE_DIR="$PREFIX/share/katifetch"
THEME_DIR="$SHARE_DIR/themes"
LOGO_DIR="$SHARE_DIR/logos"

echo "📂 Creating directories..."
mkdir -p "$INSTALL_DIR"
mkdir -p "$THEME_DIR"
mkdir -p "$LOGO_DIR"

echo "📥 Installing katifetchforandroid as 'katifetch'..."
cp katifetchforandroid "$INSTALL_DIR/katifetch"
chmod +x "$INSTALL_DIR/katifetch"

echo "🎨 Copying themes and logos..."
cp -r themes/* "$THEME_DIR"
cp -r logos/* "$LOGO_DIR"

if [ ! -f "$HOME/.katifetchrc" ]; then
  echo "⚙️ Installing default config to ~/.katifetchrc..."
  cp .katifetchrc "$HOME/.katifetchrc"
fi

echo "✅ Installation complete! Run 'katifetch' to test it."

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
    Katifetch for Android (Termux)
EOF
echo ""
