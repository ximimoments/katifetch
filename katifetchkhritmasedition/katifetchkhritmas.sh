#!/usr/bin/env bash
# Katifetch Khritmas Edition 🎄
# by kati dev (github.com/ximimoments)

PROGNAME="katifetchkhritmas"
VERSION="1.0"
INSTALL_PATH="/usr/local/bin/$PROGNAME"

# === COLORS ===
RED='\033[0;31m'
GREEN='\033[0;32m'
WHITE='\033[1;37m'
GOLD='\033[0;33m'
BOLD='\033[1m'
RESET='\033[0m'

# === ASCII LOGO (Khritmas Tree) ===
KHRISTMAS=(
"${GREEN}                         -:--:-                         ${RESET}"
"${GREEN}                         ------                         ${RESET}"
"${GREEN}                       -:-------                        ${RESET}"
"${GREEN}                         *---**                         ${RESET}"
"${GREEN}                        ********                        ${RESET}"
"${GREEN}                      *****-:=+***                      ${RESET}"
"${GREEN}                    ******+====*****                    ${RESET}"
"${GREEN}                 ****=+*#***+****--***#                 ${RESET}"
"${GREEN}                 ######*-#*****-#######                 ${RESET}"
"${GREEN}                     ######-****###                     ${RESET}"
"${GREEN}                  ****#.##*#####-..::**                 ${RESET}"
"${GREEN}               *******#####*****:::::****#              ${RESET}"
"${GREEN}              #####-*#**#************--###              ${RESET}"
"${GREEN}                  ###--##**######--####                 ${RESET}"
"${GREEN}                ###::####--##--#####+=***               ${RESET}"
"${GREEN}           *****#=.:::*#####*******-.===*****           ${RESET}"
"${GREEN}          #****--*::::*****:.::+***=====**--*##         ${RESET}"
"${GREEN}           ######******##**::::-*******--#####          ${RESET}"
"${GREEN}              ##*+-+*#*##*******###--***#               ${RESET}"
"${GREEN}            **######**-+##--**#--##########             ${RESET}"
"${GREEN}        **********+.===########***..::***********       ${RESET}"
"${GREEN}      ##*********#+====**####**#**::::*##******###      ${RESET}"
"${GREEN}        ########********##******#*******#########       ${RESET}"
"${GREEN}               #*****#####*****####*****#               ${RESET}"
"${GOLD}                #######  *######  ######                ${RESET}"
"${WHITE}                         ******                         ${RESET}"
"${WHITE}                        ********                        ${RESET}"
"${WHITE}                        ********                        ${RESET}"
)

# === RANDOM CHRISTMAS PHRASES ===
PHRASES=(
  "🎄 Merry Khritmas from kati dev!"
  "🎅 Ho ho ho! Your system is ready."
  "❄️ Let it snow… in your terminal."
  "🎁 Updates wrapped and ready."
  "✨ Powered by Khritmas spirit."
  "🦌 Santa checked your kernel twice."
  "☃️ Cold outside, stable inside."
  "🔔 Jingle bells, bash shell."
  "🎄 Another year, another uptime."
  "✨ Peace, joy and clean logs."
)

random_phrase() {
  local i=$((RANDOM % ${#PHRASES[@]}))
  echo "${PHRASES[$i]}"
}

# === BASIC INFO ===
print_logo() {
  if [ "$NO_LOGO" != "1" ]; then
    for line in "${KHRISTMAS[@]}"; do
      echo -e "$line"
    done
  fi
}

print_info() {
  echo
  echo -e "${BOLD}${RED}KATIFETCH${RESET} ${GREEN}KHRITMAS EDITION${RESET} ${WHITE}v$VERSION${RESET}"
  echo -e "${GOLD}-----------------------------------------------${RESET}"
  echo -e "${BOLD}User:${RESET}      $USER"
  echo -e "${BOLD}Host:${RESET}      $(hostname)"
  echo -e "${BOLD}OS:${RESET}        $(uname -s)"
  echo -e "${BOLD}Kernel:${RESET}    $(uname -r)"
  echo -e "${BOLD}Shell:${RESET}     $SHELL"
  echo -e "${BOLD}Terminal:${RESET}  $TERM"
  echo -e "${GOLD}-----------------------------------------------${RESET}"
  echo
  echo -e "${GREEN}$(random_phrase)${RESET}"
  echo
}

# === HELP / INSTALLER ===
show_help() {
  echo "$PROGNAME $VERSION - Katifetch Khritmas Edition 🎄"
  echo
  echo "Usage: bash $PROGNAME.sh [--install] [--uninstall] [--no-logo] [--help]"
  echo
  echo "  --install     Install $PROGNAME to $INSTALL_PATH (requires root)"
  echo "  --uninstall   Remove $PROGNAME from the system"
  echo "  --no-logo     Hide the Khritmas ASCII tree"
  echo "  --help        Show this help message"
}

install_script() {
  echo -e "${GREEN}Installing $PROGNAME to $INSTALL_PATH...${RESET}"
  sudo cp "$0" "$INSTALL_PATH"
  sudo chmod +x "$INSTALL_PATH"
  echo -e "${GOLD}✅ Installed! Run: ${BOLD}$PROGNAME${RESET}"
}

uninstall_script() {
  if [ -f "$INSTALL_PATH" ]; then
    echo -e "${RED}Removing $INSTALL_PATH...${RESET}"
    sudo rm -f "$INSTALL_PATH"
    echo -e "${GREEN}🗑️  Uninstalled successfully.${RESET}"
  else
    echo -e "${RED}⚠️  $PROGNAME is not installed.${RESET}"
  fi
}

# === ARGUMENT HANDLING ===
for arg in "$@"; do
  case $arg in
    --install) INSTALL=1 ;;
    --uninstall) UNINSTALL=1 ;;
    --no-logo) NO_LOGO=1 ;;
    --help) HELP=1 ;;
    *) ;;
  esac
done

if [ "$HELP" == "1" ]; then
  show_help
  exit 0
fi

if [ "$INSTALL" == "1" ]; then
  install_script
  exit 0
fi

if [ "$UNINSTALL" == "1" ]; then
  uninstall_script
  exit 0
fi

# === MAIN EXECUTION ===
print_logo
print_info
