#!/bin/bash

# ANSI color codes
magenta='\033[1;35m'
white='\033[1;37m'
reset='\033[0m'

# Print ASCII logo in magenta
printf "${magenta}"
cat <<'EOF'
                 ,xNMM.
               .OMMMMo
               lMM"
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
printf "${reset}\n"

# System info block
printf "${white}"
echo "katifetch"
echo
echo "OS: $(sw_vers -productName) $(sw_vers -productVersion)"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Shell: $(basename "$SHELL")"
echo "Terminal: $TERM_PROGRAM"
printf "${reset}"
