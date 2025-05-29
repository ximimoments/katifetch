#!/data/data/com.termux/files/usr/bin/bash

echo "📺 Installing Katifetch for Android TV..."

# Rutas
BIN="$PREFIX/bin"
SHARE="$PREFIX/share/katifetch"

mkdir -p "$SHARE"

# Copiar el script principal
cp katifetch.sh "$BIN/katifetch"
chmod +x "$BIN/katifetch"

# Crear archivo .bashrc si no existe y autolanzar
if ! grep -q "katifetch" "$HOME/.bashrc"; then
  echo "katifetch" >> "$HOME/.bashrc"
fi

echo "✅ Installed! Run 'katifetch' or just open Termux."
