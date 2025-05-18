#!/bin/bash

# Katifetch for macOS with Windows Edition ASCII art
# Author: ximimoments

if [[ "$(uname)" != "Darwin" ]]; then
    echo "This script is intended for macOS only."
    exit 1
fi

# ASCII art Windows Edition style (tal cual lo enviaste)
logo="
       ___           ___                                                    ___                         ___           ___     
     /  /\\         /  /\\          ___            ___         ___          /  /\\          ___          /  /\\         /  /\\    
    /  /::\\        /  /::\\        /__/\\          /__/\\       /  /\\        /  /::\\        /__/\\        /  /::\\       /  /:/    
   /  /:/\\:\\       /  /:/\\:\\       \\  \\:\\         \\__\\:\\     /  /::\\      /  /:/\\:\\       \\  \\:\\      /  /:/\\:\\     /  /:/     
  /  /::\\____   /  /::\\ \\:\\       \\__\\:\\        /  /::\\   /  /:/\\:\\    /  /::\\ \\:\\       \\__\\:\\    /  /:/  \\:\\   /  /::\\ ___ 
 /__/:/\\:::::\\ /__/:/\\:\\_\\:\\      /  /::\\    __/  /:/\\/  /  /::\\ \\:\\  /__/:/\\:\\ \\:\\      /  /::\\  /__/:/ \\  \\:\\ /__/:/\\:\\  /\\
 \\__\\/~|:|~~~~ \\__\\/  \\:\\/:/     /  /:/\\:\\  /__/\\/:/~~  /__/:/\\:\\ \\:\\ \\  \\:\\ \\:\\_\\/     /  /:/\\:\\ \\  \\:\\  \\__\\/ \\__\\/  \\:\\/:/
    |  |:|          \\__\\::/     /  /:/__\\/  \\  \\::/     \\__\\/  \\:\\_\\/  \\  \\:\\ \\:\\      /  /:/__\\/  \\  \\:\\            \\__\\::/ 
    |  |:|          /  /:/     /__/:/        \\  \\:\\          \\  \\:\\     \\  \\:\\_\\/     /__/:/        \\  \\:\\           /  /:/  
    |__|:|         /__/:/      \\__\\/          \\__\\/           \\__\\/      \\  \\:\\       \\__\\/          \\  \\:\\         /__/:/   
     \\__\\|         \\__\\/                                                  \\__\\/                       \\__\\/         \\__\\/     
"

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

# Display the ASCII and system info
printf "%s\n\n" "$logo"
echo "  User:        $user"
echo "  Hostname:    $hostname"
echo "  OS:          $os_name $os_version"
echo "  Kernel:      $kernel"
echo "  Uptime:      $uptime"
echo "  Model:       $model"
echo "  CPU:         $cpu"
echo "  RAM:         $ram"
echo "  Shell:       $shell"
echo "  Terminal:    $terminal"
