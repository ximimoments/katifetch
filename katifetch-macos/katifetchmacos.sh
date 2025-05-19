#!/bin/bash

# Katifetch for macOS - Neofetch Style
# Author: ximimoments

# Colors
PURPLE="\033[1;35m"
CYAN="\033[1;36m"
RESET="\033[0m"

# Check system
if [[ "$(uname)" != "Darwin" ]]; then
    echo -e "${RED}This script is designed for macOS only.${RESET}"
    exit 1
fi

# Get terminal width
COLUMNS=$(tput cols)

# Center function
center_text() {
    local text="$1"
    local width=${#text}
    local pad=$(( (COLUMNS - width) / 2 ))
    printf "%*s%s\n" "$pad" "" "$text"
}

# Apple logo (left side)
logo_lines=(
"                 ,xNMM."
"               .OMMMMo"
"               lMM\""
"     .;loddo:.  .olloddol;."
"   cKMMMMMMMMMMNWMMMMMMMMMM0:"
" .KMMMMMMMMMMMMMMMMMMMMMMMWd."
" XMMMMMMMMMMMMMMMMMMMMMMMX."
";MMMMMMMMMMMMMMMMMMMMMMMM:"
":MMMMMMMMMMMMMMMMMMMMMMMM:"
".MMMMMMMMMMMMMMMMMMMMMMMX."
" kMMMMMMMMMMMMMMMMMMMMMMMMWd."
" 'XMMMMMMMMMMMMMMMMMMMMMMMMMMk"
"  'XMMMMMMMMMMMMMMMMMMMMMMMMK."
"    kMMMMMMMMMMMMMMMMMMMMMMd"
"     ;KMMMMMMMWXXWMMMMMMMk."
"       \"cooc*\"    \"*coo'\""
)

# System info
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

# Info block
info_lines=(
"${CYAN}---------------------${RESET}"
"${PURPLE}      katifetch       ${RESET}"
"${CYAN}---------------------${RESET}"
"${CYAN}User:      ${RESET}$user"
"${CYAN}Hostname:  ${RESET}$hostname"
"${CYAN}OS:        ${RESET}$os_name $os_version"
"${CYAN}Kernel:    ${RESET}$kernel"
"${CYAN}Uptime:    ${RESET}$uptime"
"${CYAN}Model:     ${RESET}$model"
"${CYAN}CPU:       ${RESET}$cpu"
"${CYAN}RAM:       ${RESET}$ram"
"${CYAN}Shell:     ${RESET}$shell"
"${CYAN}Terminal:  ${RESET}$terminal"
)

# Print logo and system info side by side
for i in "${!logo_lines[@]}"; do
    line_logo="${logo_lines[$i]}"
    line_info="${info_lines[$i]}"
    printf "${PURPLE}%-35s${RESET}" "$line_logo"
    [[ -n "$line_info" ]] && center_text "$line_info" || echo
done
