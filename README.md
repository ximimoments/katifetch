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
```

# 🔄 Update

To update Katifetch, run:
```bash
chmod +x katifetch-update
./katifetch-update
```

# 🧼 Uninstall

To remove Katifetch from your system:

```bash
chmod +x uninstall.sh
./uninstall.sh
```
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
```
You can also add your own themes in the themes/ folder.

## 🚀 Run Katifetch
```bash
katifetch
```
And Enjoy Katifetch!

,,;;,';,,''''',,;,',;;,,,,,,,''',';::::;;;;;;:;;,''''.        . ......
,;;',;,'''''''',,;,:::::;,'''',;;:;;;;;,,;;;;;;;;;;,,;,'..    .       
;;',,,,'''''''',;;;::::::::;,,;;;;;;;;;,;:c:;;;;;,,,,,'',,;,'..       
;;';'''''''',,;::::::::::::::;;;;;;;,,,,,,cdxc,,,,;;;;;;;;;;::;'.     
,'',;;;'...',:::::;;;:::::::::::;'''''''''',okl,,;;,'.       ......   
''.    .'',:::;;;;;:::::::::::::::'.'''''''':xc'''''',;,'.    .       
':'    .,::;,;;::::::::::::::::::::,..'''''';c'''''''''',;;'...   ....
;:;'..';cc,,::::::::::::::::;::::::::,''''''cl;''',,,;:;;;;:;,.    ...
..',,;:oko;:::::::::::::::::;;;:::::::;,;;,,d00x;''''',,,:::;,;,...,c;
   .;:xOOd::::::::::::::::::::,,;;;:::::,,;;;k00O::::c:cc:,,,''';' ...
  .:;ckOOko:::::::::::::;:::::c,;:;;;;:::,,',;x00Olcdxd00kd;',',,,,...
.';;:cdkOOOkdlcc::::::::;;::::''''''..',;;,''',cO00d00OO00xkc,;cc::::o
';;::;:clodxxxxxxxddddollc:::;,,,;;::::kOkdlc::;,cO0k00OOOdc:;:;;;,:cc
.'::;::::::::::::::::;:::dc::;,;;cccl:;ook000kol:;;Oxxkkkd;;::cc:;;;;,
.:::;:::;:::::::::;;;,::lOk:::,;;:::l;co:ocoxk000000kxxxx::cllllc;:::l
'::;::::;::::::::;:,'::cO00d:::::cccl;ll:kkclkkkkxkkxxx0dcllllllc;:;ox
;::;:::;;::::::::;;',:lO000Ol:::;;ccc;cc:O0Ook000000kd00lllllllll:;cxk
::;::::,:::::::::;,':oO00000x::;:;;;;;;:lO00Okkxddooco0dlllllllllc;ood
::;:::'.:::::::::;';d0000000Oc:l::;;;;;:o0k,....'..c.'ollllllolll:dkkk
::;::;.'::::::::;''clccc::;':ll0d;::::::k00,;:lol',d.clllllcllllclxkkk
:;;::'..::::::::.....',;;;.'xk000::::;,lO00,:l;:,,;dcd':llcllllclxxxkk
:;;;'...;::::::;.,c.;;loo:,:O0000k:::,,d000odxxdxccO0c'.',cllllxkkkkkk
;,,'....,::::::;..d,'l;cc;l;000000c:::c0000x,dkxlcO00,''..',clxkkkkkkk
;',:'..cl:::::::;:lxdxlloddl000000l::l000000xddddxkd0c;;;,;::okkkkkkkk
;:,;:',0x:::::::;okxx:loolcx000000l:o0000000000OOOOOOOko::::;:cloooodx
:cc',:,xko::;;:::c00OOddkO0000000Ock00000000000OOOOOOdo:::;::;::clllld
::;.',:,lkl:';:::oOOOOOOOOO000000O00000000000000000Olloc::;::;:lc:cldk
::;.,c;;:,,;.,:::clkOOOOOO000000000kdddll000000000k;.cdl::::::lodllodd
cc:.;c;;,;''..::::::ok000000000000Ooxxxxd0000000d:,:::c:::::::coxllllk
c:;.,c:,'',,,.':::::;,:ok0000000000xxxxk0000Oxl;:loooll:::::::ldkdoxoo
:c;.;c:::',;:;.,::::::,,;:cldxkO000000000ko::::lxkxkol:::::cc:okkxxkkx
.',.,,,',,,:;;;.,lxo;:;:;c:::::::::;,;;;,,;,;;ddkkkd::::;;ld::dkkkkkkk
;'..;ll:,,,;;:lccdlldxOx;;:cllc:::c:;..,::cccokxkkx::::;cxkdldokkkkkkk
::;'..,:c,,collllllooolokOd:ldxxddooo':lllcclkkxkkl:::lxkkkxkxokkkkkkk
oc::,..,c'llllllllclllloodkkolddxxxxxxllllccxkkxkkc::dkkkkkkkkkxkkkkkk
lcccc::c;:llllllcod:cllll:ll;:,'.,dxxkdlllcokkkkkkl:lkkkkkkkkkkkkkkkkk
