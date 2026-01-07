#!/usr/bin/env bash

# Fuerza entorno correcto SIEMPRE
export TERM=xterm-256color

# Ir al directorio del script (CLAVE)
cd "$(dirname "$0")" || exit 1

clear
tput civis

FILE="badapple_6572frames.ascii.gz"

zcat "$FILE" | awk '
BEGIN { frame="" }
/---FRAME---/ {
    printf "\033[H%s", frame
    frame=""
    system("sleep 0.03")
    next
}
{ frame = frame $0 "\n" }
'

tput cnorm
clear
