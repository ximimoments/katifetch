#!/bin/bash

# Katifetch for Haiku OS
# by kati dev

# Colors
set_colors() {
    # \033 es más universal que \e
    c1="\033[3${1}m"
    c2="\033[3${2}m"
    c3="\033[3${3}m"
    c4="\033[3${4}m"
    reset="\033[0m"
}

get_os() {
    os="$(uname -s)"
    if [[ "$os" == "Haiku" ]]; then
        distro="Haiku"
    else
        echo "This version of Katifetch is only for Haiku OS."
        exit 1
    fi
}

get_distro_ascii() {
    case "$1" in
        small)
            set_colors 2 7 0 0
            read -rd '' ascii_data <<EOF
${c1}       ,^,
      /   \\
*--_ ;     ; _--*
\\   '"     "'   /
 '.           .'
.-'"         "'-.
 '-.__.   .__.-'
       |_|
EOF
        ;;

        *)
            set_colors 1 3 7 2
            read -rd '' ascii_data <<EOF
${c3}

           MMMM              MMMM
           MMMM              MMMM
           MMMM              MMMM
           MMMM              MMMM
           MMMM${c4}       .ciO| /YMMMMM*"
${c3}           MMMM${c4}   .cOMMMMM|/MMMMM/`
 ,         ,iMM|/MMMMMMMMMMMMMMM*
  \`*.__,-cMMMMMMMMMMMMMMMMM/\`${c3}.MMM
           MM${c4}MMMMMMM/`:MMM/  ${c3}MMMM
           MMMM              MMMM
           MMMM              MMMM
           """"              """"
EOF
        ;;
    esac
}

get_info() {
    host=$(uname -n)
    kernel=$(uname -r)
    uptime=$(uptime)
    cpu=$(sysinfo -cpu | head -n1)
    memory=$(sysinfo -mem | head -n1)
    resolution=$(screenmode 2>/dev/null | head -n1)
    packages=$(pkgman list 2>/dev/null | wc -l)
}

print_info() {
    echo -e "$ascii_data"
    echo -e "${c1}OS:${reset} Haiku"
    echo -e "${c1}Host:${reset} $host"
    echo -e "${c1}Kernel:${reset} $kernel"
    echo -e "${c1}Uptime:${reset} $uptime"
    echo -e "${c1}CPU:${reset} $cpu"
    echo -e "${c1}Memory:${reset} $memory"
    echo -e "${c1}Resolution:${reset} $resolution"
    echo -e "${c1}Packages:${reset} $packages"
    echo -e "$reset"
}

# Run
get_os
get_distro_ascii "$1"
get_info
print_info
