#!/bin/bash

# Colors
RESET="\033[0m"
BOLD="\033[1m"
PINK="\033[1;35m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"

# Detect OS
OS=$(uname)
IS_MAC=false
if [[ "$OS" == "Darwin" ]]; then
  IS_MAC=true
fi

# Apple ASCII Logo with color
apple_logo=$(cat << "EOF"
                 ,xNN.        
               .xMMN0o.       
              ;ldddl'. .oldlddl; 
             cKMMMMMMMMMMMMMMMMk.
           .KMMMMMMMMMMMMMMMMMMM0
           KMMMMMMMMMMMMMMMMMMMMMK
          :MMMMMMMMMMMMMMMMMMMMMMMK
         .KMMMMMMMMMMMMMMMMMMMMMMMK
         :MMMMMMMMMMMMMMMMMMMMMMMMK
         .KMMMMMMMMMMMMMMMMMMMMMMMK
          ;KMMMMMMMMMMMMMMMMMMMMMK
           'KMMMMMMMMMMMMMMMMMMMK
             KMMMMMMMMMMMMMMMMK
              KMMMMMMMMMMMMMMK
               ;KMMMMMMMMMMMK
                 "coco"  "scoo"
EOF
)

# Center function
center() {
  local term_width=$(tput cols)
  while IFS= read -r line; do
    printf "%*s\n" $(((${#line} + term_width) / 2)) "$line"
  done
}

# System info
USER=$(whoami)
HOSTNAME=$(hostname)
KERNEL=$(uname -r)
UPTIME=$(uptime -p | sed 's/up //')
MODEL=$(sysctl -n hw.model 2>/dev/null || echo "Unknown")
CPU=$(sysctl -n machdep.cpu.brand_string 2>/dev/null || echo "Unknown")
RAM=$(($(sysctl -n hw.memsize) / 1073741824))" GB"
SHELL="$SHELL"
TERMINAL="$TERM"

# Apply color to Apple logo if macOS
if $IS_MAC; then
  apple_logo="$(echo "$apple_logo" | sed "s/^/${PINK}/")"
fi

# Print logo (left)
IFS=$'\n' read -rd '' -a logo_lines <<< "$apple_logo"

# Print header and system info
info=$(cat <<EOF
${CYAN}----------------------${RESET}
${PINK}         katifetch${RESET}
${CYAN}----------------------${RESET}
${CYAN}User:      ${WHITE}$USER
${CYAN}Hostname:  ${WHITE}$HOSTNAME
${CYAN}OS:        ${WHITE}$(sw_vers -productName) $(sw_vers -productVersion)
${CYAN}Kernel:    ${WHITE}$KERNEL
${CYAN}Uptime:    ${WHITE}$UPTIME
${CYAN}Model:     ${WHITE}$MODEL
${CYAN}CPU:       ${WHITE}$CPU
${CYAN}RAM:       ${WHITE}$RAM
${CYAN}Shell:     ${WHITE}$SHELL
${CYAN}Terminal:  ${WHITE}$TERMINAL${RESET}
EOF
)

# Print side by side
i=0
while [[ $i -lt ${#logo_lines[@]} || $i -lt 10 ]]; do
  left="${logo_lines[$i]}"
  right="$(echo "$info" | sed -n "$((i+1))p")"
  printf "%-40s %s\n" "$left" "$right"
  ((i++))
done
