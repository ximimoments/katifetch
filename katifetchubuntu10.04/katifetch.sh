#!/bin/bash
# Minimal katifetch with orange logo for Ubuntu 10.04

ORANGE='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${ORANGE}'
                                     ...          
                                  .;llolc,        
                        .......   cooooooo:       
                   .:oxkkOkkkkkl  looooooo:       
               ..   ;kkkkkkkkkkx,  'loool.        
             'dOO:   .kkkkkkkkxxxl..      .       
            dOOOOOo    '.      .'dxdoc:clddc      
          .kOOOOOOOx               .lllccccc:.    
         .OOOOOOOO,                  .::::::::.   
    ..   .xOOOOkk.                     ::::::::   
 ,oxxxxo,  lkxxx,                      .:::::::.  
:xxxxxxxd;  dxxd                                  
;xxxxdl::' .dxxd.                                 
 .doc:::.  oxxxxc                      ........   
         'dxxxxxd;                    .........   
          dxxxxxxdc                  .........    
           oxxxxxxx:               ..........     
            ;xxxxd'   .....   ..............      
              :xd    ..............               
                    .............  .:lol:'        
                     ...........  lxxxxxxxo       
                                  xxxxxxxxx.      
                                  ;xxxxxxxc       
                                    .'''.         
                                                  
${NC}"

echo -e "${GREEN}Katifetch Ubuntu 10.04${NC}"
echo -e "${BLUE}OS:${NC} $(lsb_release -d | cut -f2)"
echo -e "${BLUE}Kernel:${NC} $(uname -r)"
echo -e "${BLUE}CPU:${NC} $(grep 'model name' /proc/cpuinfo | head -1 | cut -d: -f2 | sed 's/^ //')"

mem_total=$(free -m | awk '/Mem:/ {print $2}')
mem_used=$(free -m | awk '/Mem:/ {print $3}')
echo -e "${BLUE}Memory:${NC} ${mem_total} MB total, ${mem_used} MB used"

uptime_str=$(uptime | sed 's/.*up \([^,]*\), .*/\1/')
echo -e "${BLUE}Uptime:${NC} ${uptime_str}"

