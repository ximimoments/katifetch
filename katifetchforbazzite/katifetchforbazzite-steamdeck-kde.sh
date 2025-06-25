#!/usr/bin/env bash
# Katifetch - Bazzite Steam Deck KDE Edition by kati dev

# Colores
c_reset="\e[0m"
c_blue_dark="\e[38;5;33m"
c_blue_light="\e[38;5;39m"
c_purple_dark="\e[38;5;99m"
c_purple_mid="\e[38;5;105m"
c_title="\e[38;5;245m"     # Gris para título y datos generales
c_gray="\e[38;5;245m"
c_green="\e[38;5;77m"
c_red="\e[38;5;196m"
c_orange="\e[38;5;202m"

# Función para obtener ID de la distro
get_distro_id() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

# Validar que solo se ejecute en Bazzite
check_bazzite() {
  distro_id=$(get_distro_id)
  if [ "$distro_id" != "bazzite" ]; then
    echo -e "${c_red}Error:${c_reset} This version of Katifetch only runs on Bazzite."
    exit 1
  fi
}

check_bazzite

# Funciones info
get_cpu() {
  grep -m1 'model name' /proc/cpuinfo | cut -d: -f2 | sed 's/^ //'
}
get_gpu() {
  lspci | grep -i 'vga\|3d' | head -n1 | cut -d: -f3- | sed 's/^ //'
}
get_ram() {
  free -h | awk '/Mem:/ { printf "%s / %s", $3, $2 }'
}
get_ram_percent() {
  free | awk '/Mem:/ { printf "(%d%%)", ($3/$2)*100 }'
}
get_uptime() {
  uptime -p | sed 's/up //'
}
get_model() {
  cat /sys/devices/virtual/dmi/id/board_name 2>/dev/null || echo "N/A"
}
get_distro() {
  grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'
}
get_kernel() {
  uname -r
}
get_res() {
  xrandr | grep '*' | awk '{print $1}' | head -n1
}
get_overlay() {
  df -hT | grep overlay | awk '{ printf "%s / %s (%s) - %s", $3, $2, $6, $7 }'
}
get_btrfs() {
  df -hT | grep btrfs | awk '{ printf "%s / %s (%s) - %s", $3, $2, $6, $7 }'
}
get_monitors() {
  xrandr | grep ' connected' | awk '{print $3 " in " $1}' | sed 's/+.*//' | sed 's/[()]//g'
}

# Logo Bazzite
logo=(
"$c_blue_dark    %%%%%%====%%%%%%%%%%            $c_reset"
"$c_blue_dark  %%%%%%%%    %%%%%%%%%%%%%%        $c_reset"
"$c_blue_light %%%%%%%%%    %%%%%%%%%%%%%%%%       $c_reset"
"$c_purple_dark %%%%%%%%%    %%%%%%%%%%%%%%%###     $c_reset"
"$c_purple_dark %%%%%%%%%    %%%%%%%%%%%%%######    $c_reset"
"$c_purple_mid ==                  =======######  $c_reset"
"$c_purple_mid ==                  =========#####  $c_reset"
"$c_purple_dark %%%%%%%%%    %%%%%%%####======##### $c_reset"
"$c_purple_dark %%%%%%%%%    %%%%%#######=====##### $c_reset"
"$c_purple_dark %%%%%%%%%    %%%#########=====##### $c_reset"
"$c_purple_dark %%%%%%%%%    %%##########=====##### $c_reset"
"$c_purple_dark %%%%%%%%%====###########=====###### $c_reset"
"$c_purple_dark  %%%%%%%%====#########======######  $c_reset"
"$c_purple_mid   %%%%%%%=====#####========######   $c_reset"
"$c_purple_mid    %%%%###===============#######    $c_reset"
"$c_purple_mid     %#######==========#########     $c_reset"
"$c_purple_dark       #######################       $c_reset"
"$c_purple_dark         ###################         $c_reset"
"$c_purple_mid             ###########             $c_reset"
)

palette_colors=(33 39 99 105 141 245 77 196 202)

print_palette() {
  echo -n "Palette: "
  for c in "${palette_colors[@]}"; do
    printf "\e[38;5;%sm●\e[0m " "$c"
  done
  echo
}

# Info del sistema con colores personalizados
info=(
"${c_purple_mid}󱋩  bazzite: Steam Deck KDE Edition ${c_reset}"
"${c_purple_mid}  $(get_distro)${c_reset}"
"${c_purple_mid}  Kernel: $(get_kernel)${c_reset}"
"${c_purple_mid}  Uptime: $(get_uptime)${c_reset}"
""
"${c_blue_light}󰾰${c_reset}  ${c_orange}$(get_model)${c_reset}"
"${c_blue_light}󰻠${c_reset}  ${c_green}$(get_cpu)${c_reset}"
"${c_blue_light}󰍛${c_reset}  ${c_green}$(get_gpu)${c_reset}"
"${c_blue_light}${c_reset}  ${c_green}$(get_ram) ${c_title}$(get_ram_percent)${c_reset}"
"${c_blue_light}${c_reset}  ${c_blue_light}$(get_overlay) [Read-only]${c_reset}"
"${c_blue_light}${c_reset}  ${c_blue_light}$(get_btrfs) [Read-only]${c_reset}"
"${c_blue_light}󰍹${c_reset}  ${c_blue_light}$(get_monitors | sed -n 1p)${c_reset}"
"${c_blue_light}󰍹${c_reset}  ${c_blue_light}$(get_monitors | sed -n 2p)${c_reset}"
""
"${c_blue_light}󰕮${c_reset}  ${c_blue_light}KDE Plasma $(plasmashell --version | awk '{print $NF}' 2>/dev/null || echo N/A)${c_reset}"
"${c_blue_light}${c_reset}  ${c_blue_light}KWin (Wayland)${c_reset}"
"${c_blue_light}${c_reset}  ${c_blue_light}bash $(bash --version | head -n1 | cut -d' ' -f4)${c_reset}"
"${c_blue_light}${c_reset}  ${c_blue_light}Ptyxis 48.1${c_reset}"
"${c_blue_light}󰏖${c_reset}  ${c_orange}$(rpm -qa | wc -l)${c_reset} (rpm), ${c_green}$(flatpak list | wc -l)${c_reset} (flatpak)"
)

print_info() {
  local max_lines=${#logo[@]}
  for ((i=0; i<max_lines; i++)); do
    local logo_line="${logo[i]}"
    local info_line="${info[i]:-}"
    printf "%-30b  %b\n" "$logo_line" "$info_line"
  done
  echo
  printf "%30s  " ""
  print_palette
  echo -e "${c_reset}"
}

print_info
