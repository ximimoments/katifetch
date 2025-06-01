# Katifetch

**Katifetch** is a customizable system information tool written in Bash, inspired by [Neofetch](https://github.com/dylanaraps/neofetch). It supports themes, ASCII logos for many Linux distributions, and user configuration via `~/.katifetchrc`.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetch.png)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchv2.png)

---

## Features

* Detects CPU, GPU, RAM, uptime, shell, and more.
* Uses beautiful ASCII logos.
* Supports user themes and color customization.
* Auto-update checker.
* Nerd Fonts compatible for icon customization.

---

## 📦 Installation

```bash
git clone https://github.com/ximimoments/katifetch.git
cd katifetch
chmod +x install.sh
./install.sh
```

---

# 🔄 Update

To update Katifetch, run:

```bash
chmod +x katifetch-update
./katifetch-update
```

---

# 🧼 Uninstall

To remove Katifetch from your system:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

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

---

## 🚀 Run Katifetch

```bash
katifetch
```

## And Enjoy of Katifetch for Linux!

---

# Katifetch For Windows edition

If you're on Windows, you can use the PowerShell version of Katifetch.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchforwindowsedition.png)

# 🎥 Katifetch Video Demo for Windows

📹 See how Katifetch looks on Windows (PowerShell):

[![Watch the demo](https://img.youtube.com/vi/Y01yuxDgzY4/0.jpg)](https://www.youtube.com/watch?v=Y01yuxDgzY4)

## 📦 Installation (Windows)

```powershell
git clone https://github.com/ximimoments/katifetch.git
cd katifetch
cd katifetchforwindowsedition
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

## 🔄 Update (Windows)

```powershell
powershell -ExecutionPolicy Bypass -File .\katifetch-update.ps1
```
## 🧼 Uninstall (Windows)

```powershell
powershell -ExecutionPolicy Bypass -File .\uninstall.ps1
```
## And Enjoy of Katifetch for Windows edition!

---

# Katifetch for macOS

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/katifetchmacos.jpg)


Katifetch also supports macOS with the same Bash-based script.

## 📦 Installation (macOS)

```bash
git clone https://github.com/ximimoments/katifetch.git  
cd katifetch  
cd katifetch-macos
chmod +x install.sh  
./install.sh  
```

## 🔄 Update (macOS)

```bash
chmod +x update-macos.sh  
./update.sh  
```

## 🧼 Uninstall (macOS)



To remove Katifetch on macOS:

```bash
chmod +x uninstall.sh  
./uninstall.sh  
```

And enjoy Katifetch on macOS!

#

# Katifetch for Android

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/Androidtermuxkatifetch.jpg" width="300" />

Here's where the crazy stuff starts: katifetch on Android?
Yes! katifetch on Android.
After many days of development on this project and thinking about which devices to use, katifetch was officially launched on Android!
That is, only on Termux. How cool is that? You can install Termux on f-droid and in the Play Store, which is typical.
And what's it about?
The same Linux katifetch as always, but the Android logo is modified, meaning it's kind of crooked.

## 📦 Installation (Android termux)

First download git on termux

```bash
pkg install git  
```

and then

```bash
git clone https://github.com/ximimoments/katifetch.git
```

Now we go to the cd part, that is, put the exact katifetch directory for android termux and chmod

```bash
ls
cd katifetch
cd katifetchforandroid\(termux\)/
ls
chmod +x katifetchmenu.sh
./katifetchmenu.sh
```
press 1 | enter | press 4

and ready!!!

## 🔄 Update (macOS)

#

<p align="center">
 — 🙏 Thank you for supporting Katifetch! — <br>
 — From the Katifetch community 💙 —<br>
 <a</a>
</p>

## 📢 Join the Community
Join our growing community to get help, share your setups, or contribute! 
👉 **[Join our Discord server](https://discord.gg/AK9WrTHTVq)**
