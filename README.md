# Katifetch

**Katifetch** is a customizable system information tool written in Bash, inspired by [Neofetch](https://github.com/dylanaraps/neofetch). It supports themes, ASCII logos for many Linux distributions, and user configuration via `~/.katifetchrc`.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetch.png)  
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchv2.png)

---

## Features

- Detects CPU, GPU, RAM, uptime, shell, and more.
- Uses beautiful ASCII logos.
- Supports user themes and color customization.
- Auto-update checker.
- Nerd Fonts compatible for icon customization.

---

## 📦 Installation

```bash
git clone https://github.com/ximimoments/katifetch.git
cd katifetch
chmod +x install.sh
./install.sh

# 🔄 Update

To update Katifetch, run:

chmod +x katifetch-update
./katifetch-update

# 🧼 Uninstall

To remove Katifetch from your system:

chmod +x uninstall.sh
./uninstall.sh

🎥 Video Tutorial

> 📺 **How to Install Nerd Font for Katifetch**  
> [![Watch the video](https://img.youtube.com/vi/gWKcaDRoy8s/0.jpg)](https://www.youtube.com/watch?v=gWKcaDRoy8s)


Click the image above to watch the full tutorial.
# 🎨 Customize

Edit the file ~/.katifetchrc to configure your Katifetch:

```ini
# Example .katifetchrc
show_logo=true
show_cpu=true
show_gpu=true
show_uptime=true
show_memory=true

theme=default
logo=cachyos

You can also add your own themes in the themes/ folder.

## 🚀 Run Katifetch

katifetch

And Enjoy Katifetch!
,,,;;;,.':,,,''''''',;';,''',;;;,,,,,,,,'''''',',;::::::;;;;;;,;;:;,;,'''''...          .  .........
,,;;;'.;;,',''''''''',;,;,,;::::;;,'''',,,,,,,;:::::;;;;,,,;;;;::;;:;;;;,,,,,...        .           
;;;;.':,,,,'''''''''''',:,,:::::::::;,..''',;::;;;;;;;;;,;,,;;;;;;;;;;;;;;;;;;;;,,'...  .           
;;;'':,,'''''''''''''',;;;:::::::::::::;'';;;;;;;;;;;;;;,;:cc:;,;;;;;;,,,,,,,'''',;;;,'.'.          
,;,.:,',,,'''''''',,;;:::::::::::::::::::;,;;;;;;;;;;;,,,;;:lxxo:;;;;;;;;;;;;,,;,,;;,;;;;'..        
;;',,''''''''''',,,;::::::::::::::::::::::::;;,,,,,,,,,'''''',lxkl;'',,;;:;,,,'''''''',,:::,...     
,,.',::;::;....'';:::::::;;;;;;:::::::::::::::;''''''''''''''.,lkkl;,,,,,,''..          .  ......   
'''.     ..'''';::::::;,;;;:::::::::::::::::::::,..'''''''''''':dxl,''''''',;:;'.       .           
',;.      .',,:::::;,,;::::::::::::::::::::::::::;'.'.''''''''';od;'''''''''''';::,..   .           
';:,.     ',;:::,,,;:::::::::::::::::::::::::::::::,..''''''''',l;''''''''''''''',;;;,. .     ......
;::;'.  .';:::;,,;:::::::::::::::::::::::;:::::::::::'.'''''''';c,'''',,,,,,;::;;,;;:::;'      .....
.;:::;;,,;:lkl,;:::::::::::::::::::::::::,;:::::::::::;',;;;,''x00kl''''',,,;:;:;:ccc:;,;;..........
.....'',:cxkOo:::::::::::::::::::::::::::,;,;:::::::::::,,,,,,,lO000k;''''',,,,,,,;::;;,;,;,....:do:
    ..;:cxOOOd:::::::::::::::::::::::::::;;'';:;,;:::::::;,,,;;,o0000O:;::::cc:::;;;,,,','',;.  .. .
    ':::oOOOOkl:::::::::::::::::::::::::::::;,;::;;:::::::,',,',,o0000kccc:clcd00ko:''''''''',,     
   ,::;;dOOOOOkoc::::::::::::::::::;:::::::c,,;;;:;;;,;::::;'''',,cO000Ol;x00Ok000Okx;,,,,;;;;;:..''
..;:,;::lxOOOOOOkdocc::::::::::::::;;:::::;'''''.'''..',;;::,.''''';d0000ok000kO000dkkc,';lll:c;:;oo
.;;,::::;:ldxkOOOOOkxxxddoooooollllc;c::::;'''''''',,,':odooc,;;:::;;:d000k0000xO00kddc;;;;;,;:,cc:o
;;'::::;;:::::ccllloodddddddddoollc:l;::::,,;;:cllllll,lO0000Okdc;:;;;,:k0OxO000Okko;;;::::;:;;,;c:;
..;:::;;::::::::::::::::::::::;;;;;:xl;:::;,;:,:ccc:lc,clcdO00000kdl:;,''OOxdxxxxxo;;;::cccc:;;:;,,,
 '::::;:::::;::::::::::::::;;;,::::oOk:;::;,;:;;::::l:;lo:,ccok0000000OOk0Oxxxxddo:::cllllll;;;:::,;
.;:::;;:::::;:::::::::::;;;;;',:::lk0Ox::::;;;;;;;;;l::llcckdc;lxxkO0000000kxxdk0::clllllllc:;::::dx
.:::;;:::::;;:::::::::::;;:,'':::ck000Oo::::::cccllll;:ll:cOOxc:k0OkxxddxxxxxdO0k:llllllllcl:::;;cdx
;:::;::::::,::::::::::::::;'.;::lk00000kl:::::::cllll;cll:lO00klo00000000Okxok00lllllllllcocl::;:dkk
:::;;:::::;;::::::::::::;:,.,::oO000000Ox:::::;,;,,;;;::::d0000OdO000000000Ox00kllllllllcocllc;,dddd
:::;;:::::,;::::::::::::;;'';:oO00000000kl::;;:;:,;;;;;;::x0000Okkxdoolcc:;,l0Ollllllllcdclllc,:oddx
:::,:::::'.;::::::::::::;;',:o00000000000d:::c:::;;;;;;;:ck00k,...  ... ':'.'ollllllllcdlllll;cxkkkk
::;,::::,..;::::::::::::;,,cxOOOOOOOOkxk0k::xk:::::::::::lO0Ol ':ccclc, ;d:.,olllllllcolllllccxkkkkk
::;;:::;'..;:::::::::::,..';:;;,,,,''.. .lco00d;:::::::::d00Kx.;;:lool,.:o:.dlllllllclllllll:lxxkkkk
::;;:::,...;:::::::::::.  ......''',,' :xOk0000c;::::;,;ck000x,;d:;::,,.:k;lx.,clllcllllllc:ldxxxkkk
::;;::,....,::::::::::; .l'.'c:cloool;.:k000000x,::::;';o0000k,oxdoccod.okd0l..',:cllllllclxkkkkkkkk
::,;:'.....'::::::::::, .ol'',';oool;,'lO0000000l;:::;,;x00000doxxxxxkc'k000;.'...';lllllokkkkkkkkkk
;:';''......::::::::::;' cd,.'d':ll:;o.:00000000x;:::::o00000Ko'dkkkxlcd000O''''..''',clokkkkkkkkkkk
',.,;;.....,;::::::::::;,'xd,cxc;;:;lxld0000000KO:::::l0000000Oc;:cc:;:Oko0k'.';''',;;;okkkkkkkkkkkk
c',,::,..'x0l::::::::::,ol:kkdodxxxxkd:l000000000::::l000000000000000OO0xoOOdol::;;:c;;coxxxkkkkkkkk
,;:,;::,.;0kd;:::::::::::0kdkx:;odooc;cO00000000O:::d000000000000000OOOOOOOOOOko::;cc:;;:clllllooodx
,:cc,;::,'Okxl;:::;:::::;x000OklcloxkO0000000000d,ck000000000000000OOOOOOOOOkxo:::;;c:;;:cccllllllld
cccc.'',:,:OOx:::;.:::::;oOOOOOOOOOOO00000000000ld000000000000000000OOOOOOOkcoc::::,:;:;;;;:ccllllok
:::; .,,,:;'lOd::;.:::::lxOOOOOOOOOOOO00000000000K000000000000000000000000k;lod::::;;:::;:lol;clldkk
;::;..,c:'::,,c;:,.;:::::oxOOOOOOOOOOO0000000000000xoddll:k00000000000000o,.cddc::::;:::;dxldccloooo
cc:;..;cll,;c;..''.'::::::;ck0OOO00000000000000000xdxxxxxox00000000000Od;',,col::::::::::loddlllldkx
lllc..;c,',';:''..'.;:::::::;lxO00000000000000000Olxxxxxxdk000000000kc'';ccc:cc::::::::::loxxlllocok
c:::..;c:;',.,',,,..'::::::::;';cx0000000000000000xodxdxxO0000000Oo;,;ccooolloc:::::::;::loxxdllxdld
cc::..,::c::,.,;,:;..,::::::::;,;;:odxO0000000000000OkOO00000Oxol;;cloxddxxloc::::::::::;dkkxxoxkkdo
::c:..;cc::::',;;:::,.;::::;::::,';;::;:lodxkO000000000000Odc;;::;:lokkkkkdlc:::::::clc::xkkkxxkkkkk
..,;..;;'''';,';::;;;,.;:lxx::::::;:l:;cc:::::::::;;;::cc;,;;;,;,;doxkkkkxl;:::::;;cdo::cxkkkkkkkkkk
,....':lll;,;,,;::;;::;,x0Ol;;:cod:;;:olc::cc::::c:,'. .',,,;;::cokxkkkkkl::::::;:okko,olxkkkkkkkkkk
:;'..',::::;;'',,;clllllll;lk000Oo;:::;:coolcc:::cc::...;clllclllkkdkkkko;::::::okkkkcxklokkkkkkkkkk
:::;'...';::l',,llllllllllllooocloxO0Ocllldxxxddooool.,clllllcccxkkdkkkx:::::cokkkkkxkkkdlxkkkkkkkkk
c:c::;....':c.;cooolllccclllllllodkkxooodoxxxxxxxxxxxxllllllcccokkkdkkkd;:::lxkkkkkkkkkkkddkkkkkkkkk
xl:::::,..;l;,llllllccooolccllllllccdO0Ox;:llllodxxxxxxclllccclkkkkxkkkx;::lkkkkkkkkkkkkkkkxkkkkkkkk
cccccc:c:ccl'clllllllolccdxc;lllllll:;c;;::,''.'oxxxxkklllllccxkkkkxkkkk:::xkkkkkkkkkkkkkkkkkkkkkkkk
