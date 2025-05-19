#!/usr/bin/env bash

# katifetch for macOS – Apple logo with color, centered text

# Define colors
PINK="\033[1;35m"
RESET="\033[0m"

# Detect if running on macOS
IS_MAC=false
if [[ "$(uname)" == "Darwin" ]]; then
  IS_MAC=true
fi

# Apple ASCII logo (DO NOT EDIT)
apple_logo=$(cat << "EOF"
                 ,xNMM.
               .OMMMMo
               lMM\"
     .;loddo:.  .olloddol;.
   cKMMMMMMMMMMNWMMMMMMMMMM0:
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.
 XMMMMMMMMMMMMMMMMMMMMMMMX.
;MMMMMMMMMMMMMMMMMMMMMMMM:
:MMMMMMMMMMMMMMMMMMMMMMMM:
.MMMMMMMMMMMMMMMMMMMMMMMMX.
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.
 'XMMMMMMMMMMMMMMMMMMMMMMMMMMk
  'XMMMMMMMMMMMMMMMMMMMMMMMMK.
    kMMMMMMMMMMMMMMMMMMMMMMd
     ;KMMMMMMMWXXWMMMMMMMk.
       "cooc*"    "*coo'"
EOF
)

# Apply pink color only if on macOS
if $IS_MAC; then
  apple_logo="$(echo "$apple_logo" | sed "s/^/${PINK}/")"
fi

# Get system info
os_name=$(sw_vers -productName)
os_version=$(sw_vers -productVersion)
hostname=$(hostname)
kernel=$(uname -r)
shell=$(basename "$SHELL")
terminal="${TERM_PROGRAM:-Unknown}"

# Create info block and center it
title="katifetch"
info=$(cat << EOF
$os_name $os_version
Hostname: $hostname
Kernel: $kernel
Shell: $shell
Terminal: $terminal
EOF
)

# Center helper
center() {
  local term_width=$(tput cols)
  while IFS= read -r line; do
    printf "%*s\n" $(( (${#line} + term_width) / 2 )) "$line"
  done
}

# Print logo + info
echo -e "$apple_logo${RESET}"
echo
center <<< "$title"
echo
center <<< "$info"

