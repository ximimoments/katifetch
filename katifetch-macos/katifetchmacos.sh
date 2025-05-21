#!/bin/bash

# ANSI colors
magenta='\033[1;35m'
white='\033[1;37m'
reset='\033[0m'

# macOS ASCII logo
logo="${magenta}                 ,xNMM.
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
       \"cooc*\"    \"*coo'\"${reset}"

# System info
os=$(sw_vers -productName)
os_version=$(sw_vers -productVersion)
kernel=$(uname -r)
hostname=$(hostname)
shell=$(basename "$SHELL")
terminal="$TERM_PROGRAM"

# Info block
info="${white}katifetch

OS: $os $os_version
Hostname: $hostname
Kernel: $kernel
Shell: $shell
Terminal: $terminal${reset}"

# Print logo and info
printf "%s\n\n%s\n" "$logo" "$info"

