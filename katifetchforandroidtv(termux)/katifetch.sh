#!/data/data/com.termux/files/usr/bin/bash

clear
logo="📺 Katifetch TV"

# Datos del sistema
user=$(whoami)
host=$(getprop ro.product.model)
os="Android TV"
kernel=$(uname -r)
shell="$SHELL"

echo ""
echo "    $logo"
echo "    ───────────────"
echo "    User   : $user"
echo "    Device : $host"
echo "    OS     : $os"
echo "    Kernel : $kernel"
echo "    Shell  : $shell"
echo ""
