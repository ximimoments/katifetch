#!/bin/bash

# Katifetch Installer for Haiku OS
# by kati dev

echo "📦 Installing Katifetch for Haiku OS..."

# Ruta de instalación recomendada en Haiku: 
# /boot/home/config/non-packaged/bin
INSTALL_DIR="/boot/home/config/non-packaged/bin"

# Crear carpeta si no existe
mkdir -p "$INSTALL_DIR"

# Copiar el script principal
cp katifetchforhaiku.sh "$INSTALL_DIR/katifetch"
chmod +x "$INSTALL_DIR/katifetch"

# Copiar también el desinstalador
cp uninstall_haiku.sh "$INSTALL_DIR/uninstall_haiku.sh"
chmod +x "$INSTALL_DIR/uninstall_haiku.sh"

echo "✅ Installation complete!"
echo ""
echo "You can now run Katifetch with:"
echo "   katifetch        # normal logo"
echo "   katifetch small  # small logo"
echo ""
echo "To uninstall Katifetch, run:"
echo "   uninstall_haiku.sh"
