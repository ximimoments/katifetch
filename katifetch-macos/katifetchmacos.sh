#!/bin/bash

# Katifetch for macOS with Windows Edition ASCII art
# Author: ximimoments

# Colors
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
PURPLE="\033[1;35m"
RESET="\033[0m"

# Validación de sistema
if [[ "$(uname)" != "Darwin" ]]; then
    echo -e "${RED}This script is intended for macOS only.${RESET}"
    exit 1
fi

# ASCII art For MacOS edition
logo="
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
       \"cooc*\"    \"*coo'\"    
"

# Show ASCII logo
printf "%s\n\n" "$logo"

# Show title
echo -e "${PURPLE}---------------------"
echo -e "     katifetch"
echo -e "---------------------${RESET}"

# Collect system info
user=$(whoami)
hostname=$(scutil --get ComputerName)
os_version=$(sw_vers -productVersion)
os_name=$(sw_vers -productName)
kernel=$(uname -r)
uptime=$(uptime | awk -F'( |,|:)+' '{print $6"h", $7"m"}')
model=$(sysctl -n hw.model)
cpu=$(sysctl -n machdep.cpu.brand_string)
ram=$(sysctl -n hw.memsize | awk '{printf "%.2f GB", $1 / 1073741824}')
shell="$SHELL"
terminal="$TERM"

# Show system info with color
echo -e "${CYAN}  User:       ${RESET}$user"
echo -e "${CYAN}  Hostname:   ${RESET}$hostname"
echo -e "${CYAN}  OS:         ${RESET}$os_name $os_version"
echo -e "${CYAN}  Kernel:     ${RESET}$kernel"
echo -e "${CYAN}  Uptime:     ${RESET}$uptime"
echo -e "${CYAN}  Model:      ${RESET}$model"
echo -e "${CYAN}  CPU:        ${RESET}$cpu"
echo -e "${CYAN}  RAM:        ${RESET}$ram"
echo -e "${CYAN}  Shell:      ${RESET}$shell"
echo -e "${CYAN}  Terminal:   ${RESET}$terminal"
