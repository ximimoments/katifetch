#!/usr/bin/env bash
# Katifetch Kalloween Edition 🎃
# by kati dev (github.com/ximimoments)

PROGNAME="katifetchkalloween"
VERSION="1.0"
INSTALL_PATH="/usr/local/bin/$PROGNAME"

# === COLORS ===
ORANGE='\033[0;33m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

# === ASCII LOGO ===
PUMPKIN=(
"${ORANGE}                  ***                         ${RESET}"
"${ORANGE}                  *****                       ${RESET}"
"${ORANGE}                    ****                      ${RESET}"
"${ORANGE}                     ****                     ${RESET}"
"${PURPLE}           ==========****==========           ${RESET}"
"${PURPLE}       ================================       ${RESET}"
"${PURPLE}     ====================================     ${RESET}"
"${PURPLE}    ======================================    ${RESET}"
"${PURPLE}   ========================================   ${RESET}"
"${RED}  ==========================================  ${RESET}"
"${RED}  ============%================%============  ${RESET}"
"${RED} ===========%%%%==============%%%%=========== ${RESET}"
"${RED} ==========%%%%%%============%%%%%%%========= ${RESET}"
"${RED} ====================+%%%==================== ${RESET}"
"${RED} ===================*%%%%%=================== ${RESET}"
"${RED}  ===============+=====+==========+=========  ${RESET}"
"${RED}  =========*%%%%%%%%%%%%%%%%%%%%%%==========  ${RESET}"
"${RED}   =========%%%%%%%%%%%%%%%%%%%%%%=========   ${RESET}"
"${RED}    =========%%%#%%%%%*=%%%%%=%%%=========    ${RESET}"
"${PURPLE}      ==================================      ${RESET}"
"${PURPLE}        ==============================        ${RESET}"
"${ORANGE}           ========================           ${RESET}"
"${ORANGE}                   ========                   ${RESET}"
)

# === RANDOM HALLOWEEN PHRASES ===
PHRASES=(
  "🕯️  Happy Halloween from Kati Dev!"
  "💀 Your system awakens from the digital grave..."
  "🎃 Stay spooky and hack responsibly."
  "👻 Beware of ghost processes in /var/run..."
  "🦇 Night falls, and the kernel stirs..."
  "🕸️  Creeping updates detected..."
  "⚰️  Something dark lurks in /tmp..."
  "🧛 Your CPU thirsts... for power..."
  "🪦 Memory leaks are rising from the dead..."
  "🧙 Summoning bash magic..."
)

random_phrase() {
  local i=$((RANDOM % ${#PHRASES[@]}))
  echo "${PHRASES[$i]}"
}

# === BASIC INFO ===
print_logo() {
  if [ "$NO_LOGO" != "1" ]; then
    for line in "${PUMPKIN[@]}"; do
      echo -e "$line"
    done
  fi
}

print_info() {
  echo
  echo -e "${BOLD}${ORANGE}KATIFETCH KALLOWEEN EDITION${RESET} ${PURPLE}v$VERSION${RESET}"
  echo "-----------------------------------------------"
  echo -e "${BOLD}User:${RESET}      $USER"
  echo -e "${BOLD}Host:${RESET}      $(hostname)"
  echo -e "${BOLD}OS:${RESET}        $(uname -s)"
  echo -e "${BOLD}Kernel:${RESET}    $(uname -r)"
  echo -e "${BOLD}Shell:${RESET}     $SHELL"
  echo -e "${BOLD}Terminal:${RESET}  $TERM"
  echo "-----------------------------------------------"
  echo
  echo -e "${RED}$(random_phrase)${RESET}"
  echo
}

# === HELP / INSTALLER ===
show_help() {
  echo "$PROGNAME $VERSION - Katifetch Kalloween Edition 🎃"
  echo
  echo "Usage: bash $PROGNAME.sh [--install] [--uninstall] [--no-logo] [--help]"
  echo
  echo "  --install     Install $PROGNAME to $INSTALL_PATH (requires root)"
  echo "  --uninstall   Remove $PROGNAME from the system"
  echo "  --no-logo     Hide the Halloween ASCII pumpkin"
  echo "  --help        Show this help message"
}

install_script() {
  echo -e "${PURPLE}Installing $PROGNAME to $INSTALL_PATH...${RESET}"
  sudo cp "$0" "$INSTALL_PATH"
  sudo chmod +x "$INSTALL_PATH"
  echo -e "${ORANGE}✅ Installed successfully! You can now run: ${BOLD}$PROGNAME${RESET}"
}

uninstall_script() {
  if [ -f "$INSTALL_PATH" ]; then
    echo -e "${RED}Removing $INSTALL_PATH...${RESET}"
    sudo rm -f "$INSTALL_PATH"
    echo -e "${PURPLE}🗑️  Uninstalled successfully.${RESET}"
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
