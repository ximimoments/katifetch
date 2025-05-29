#!/data/data/com.termux/files/usr/bin/bash

echo "🧹 Uninstalling Katifetch for Android TV..."

rm -f "$PREFIX/bin/katifetch"
sed -i '/katifetch/d' "$HOME/.bashrc"

echo "✅ Uninstalled!"
