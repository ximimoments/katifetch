<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=DM+Serif+Text&weight=100&size=31&pause=1000&color=F7BE6C&center=true&width=435&lines=%F0%9F%A7%91%E2%80%8D%F0%9F%92%BBKatifetch%F0%9F%A7%91%E2%80%8D%F0%9F%92%BB" alt="Typing SVG">
</p>

[![GitHub Stars](https://img.shields.io/github/stars/ximimoments/katifetch?style=for-the-badge&logo=github&label=Stars)](https://github.com/ximimoments/katifetch)
[![License: MIT](https://img.shields.io/github/license/ximimoments/katifetch?style=for-the-badge&logo=open-source-initiative)](https://github.com/ximimoments/katifetch/blob/main/LICENSE)
[![Repo Size](https://img.shields.io/github/repo-size/ximimoments/katifetch?style=for-the-badge&logo=files&label=Repo%20Size)](https://github.com/ximimoments/katifetch)
[![Open Issues](https://img.shields.io/github/issues/ximimoments/katifetch?style=for-the-badge&logo=bug&label=Issues)](https://github.com/ximimoments/katifetch/issues)
[![Last Commit](https://img.shields.io/github/last-commit/ximimoments/katifetch?style=for-the-badge&logo=git&label=Last%20Commit)](https://github.com/ximimoments/katifetch/commits/main)



*Katifetch is not affiliated with or endorsed by any distribution, including but not limited to the Fedora Project™. Logos and names (such as Fedora™ and COPR™) are used strictly for informational and compatibility purposes only.*

**Katifetch** is a customizable system information tool written in Bash, inspired by [Neofetch](https://github.com/dylanaraps/neofetch). It supports themes, ASCII logos for many Linux distributions, and user configuration via `~/.katifetchrc`.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/dsadsafg.png)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetch.png)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchv2.png)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchwsl.PNG)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchhardwarerealhp2.0.png)
---

## 📸 Screenshots

See more screenshots from different operating systems here:  
👉 [More screenshots available in this repository](https://github.com/ximimoments/katifetchscreenshots/blob/main/readme.md)
![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/esd.png)

#

## ✅ Platform Compatibility

| Platform                         | Status | Notes                                                                 |
|----------------------------------|--------|-----------------------------------------------------------------------|
| **Linux**                        | ✅     | Native Bash support                                                  |
| **macOS**                        | ✅     | Bash with Apple logo                                                 |
| **Windows 11**                   | ✅     | PowerShell version (.ps1) with optional PATH setup                   |
| **Windows 10**                   | ✅     | PowerShell + `.bat` command (run `katifetch` from console)           |
| **WSL (Windows Subsystem for Linux)** | ✅ | Native Linux version with WSL detection + Windows integration        |
| **Android (Termux)**            | ✅     | Runs in Termux with custom logo                                      |
| **Android (proot-distro)**      | ✅     | Runs in Debian/Ubuntu containers via proot-distro                    |
| **Android TV (Termux)**         | ❓     | Minimalist version planned — available August 6, 2025                |
| **Fedora (COPR repo)**          | ✅     | Installable via [COPR](https://copr.fedorainfracloud.org/coprs/ximios/katifetch/) |
| **Ubuntu/Debian (.deb)**        | ✅     | Official `.deb` package available — easy install                     |
| **Ubuntu 10.04**                | ✅     | Basic Bash script support with colored logo                          |

📅 **Last updated:** June 24, 2025

## 📄 Release Notes

### Version 1.2 (Official Release) — June 24, 2025

- 📦 Added official `.deb` package for Debian and Ubuntu systems.
- 🐛 Fixed installer to automatically create `.katifetchrc` on first run.
- 🎨 Updated themes and default appearance with `ozozfetch`.
- 🌍 Improved compatibility with systems in Brazil 🇧🇷 and Japan 🇯🇵.
- ⚙️ Better fallback logic and error handling in the fetch script.

🆕 Now supporting `.deb` format alongside `.rpm` and `.tar.gz` builds.

📄 For full details, see the [`CHANGELOG.md`](./CHANGELOG.md).

📆 **Android TV minimalist version scheduled for:** August 6, 2025

# Ubuntu / Debian
sudo dpkg -i katifetch-1.2-debian.deb

# Universal (manual install)
tar -xzf katifetch-1.2.tar.gz
cd katifetch-1.2
./install.sh

---

## Features

* Detects CPU, GPU, RAM, uptime, shell, and more.
* Uses beautiful ASCII logos.
* Supports user themes and color customization.
* Auto-update checker.
* Nerd Fonts compatible for icon customization.

---

## katifetch: how to install nerdfont

[![Watch the demo](https://img.youtube.com/vi/gWKcaDRoy8s/0.jpg)]([https://www.youtube.com/watch?v=gWKcaDRoy8s])

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

## And enjoy using Katifetch on Linux!
---

# Katifetch For Windows edition

If you're on Windows, you can use the PowerShell version of Katifetch.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchforwindowsedition.png)

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchonwindows10enterpriseltscevaluation2021.PNG)

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
## And enjoy using Katifetch on Windows edition! 

---

# Katifetch for macOS

 ![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchmacos(4).png)

collaboration with: 

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/collab.png)

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

And enjoy using Katifetch on macOS!

#

# Katifetch for Android

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/Androidtermuxkatifetch.jpg" width="300" />

Here's where the crazy stuff starts: katifetch on Android?
Yes! katifetch on Android.
After many days of development on this project and thinking about which devices to use, katifetch was officially launched on Android!
That is, only on Termux. How cool is that? You can install Termux on f-droid and in the Play Store, which is typical.
And what's it about?
The same Linux katifetch as always, but with a customized Android logo to match the style.

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

## 🔄 Update (Android termux)

```bash
./katifetchmenu.sh
```
press 2 | enter | press 4

and ready!!!


## 🧼 Uninstall (Android termux)

```bash
./katifetchmenu.sh
```
press 3 | enter | press 4

and ready!!!

#

## KATIFETCH ON FEDORA REPO :D

but first

   ### 📦 first enable the dnf copr:

```bash
sudo dnf copr enable ximios/katifetch 
```
   ### 📦 Install katifetch:

```bash
sudo dnf install katifetch
```

   ### 🔄 Update katifetch (to get the latest version):

```bash
sudo dnf update katifetch
```

  ### 🔄📦 Reinstall katifetch (if needed):

```bash
sudo dnf reinstall katifetch
```

   ### 🧼 Remove katifetch:

```bash
sudo dnf remove katifetch
```

   ### 🚀 Run katifetch:

```bash
katifetch
```

#
And enjoy using Katifetch with Fedora Copr

# Katifetch for Proot-Distro (Android Termux)

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchontermuxdebian.jpg" width="300" />

Run Katifetch inside a Linux container using `proot-distro` on Termux!

---

## 📦 Installation (Proot-Distro in Termux)

### 1. Log in to your Proot-Distro

Replace `<your_distro>` with your installed distro name (e.g. `debian`, `ubuntu`, `fedora`):

```bash
proot-distro login <your_distro>
```

---

### 2. Clone the Katifetch repository

```bash
git clone https://github.com/ximimoments/katifetch.git
```

---

### 3. Navigate to the Proot-Distro folder

```bash
cd katifetch/katifetchforprootdistrotermux/
```

---

### 4. Make the installer executable

```bash
chmod +x install.sh
```

> 💡 *Note: A version without `chmod` is coming soon for easier setup.*

---

### 5. Install Katifetch

```bash
./install.sh
```

---

## 🧼 Uninstall (Proot-Distro Termux)

To remove Katifetch from your Proot-Distro environment:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## 🔄 Update (Proot-Distro Termux)

To update Katifetch inside your Proot-Distro environment:

```bash
chmod +x katifetch-update.sh
./katifetch-update.sh
```
#

# 🧡 Katifetch for Ubuntu 10.04

Minimal version of Katifetch designed exclusively for legacy systems like Ubuntu 10.04 LTS.

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/kkk.png)

📖 **Full tutorial**: | [How to Install Katifetch on Ubuntu 10.04 (PDF)](https://raw.githubusercontent.com/ximimoments/katifetch/main/katifetchubuntu10.04/tutorial-file/Tutorial_How_to_Install_Katifetch_on_Ubuntu_10.04.pdf) |

## 📦 Installation

```bash
git clone https://github.com/ximimoments/katifetchubuntu10.04.git
cd katifetchubuntu10.04
chmod +x install.sh
sudo ./install.sh
```

## 🔄 Update

To update Katifetch:

```bash
chmod +x update.sh
sudo ./update.sh
```
## 🧼 Uninstall

To remove Katifetch:

```bash
chmod +x uninstall.sh
sudo ./uninstall.sh
```
🖥 Run Katifetch
```bash
katifetch
```
## ✨ Features

-    🎨 Orange ASCII logo

-    💻 System info: OS, Kernel, CPU, Memory, Uptime

-    🐚 Bash-compatible

-    ⚙️ Lightweight and fast

-    🧠 Compatible with low-memory environments

And enjoy using Katifetch on Ubuntu 10.04!

#

<p align="center">
 — 🙏 Thank you for supporting Katifetch! — <br>
 — From the Katifetch community 💙 —<br>
 <a</a>
</p>

## 📢 Join the Community
Join our growing community to get help, share your setups, or contribute! 
👉 **[Join our Discord server](https://discord.gg/AK9WrTHTVq)**

#

## Podcast katifetch on NotebookLM ai

[![Watch the demo](https://img.youtube.com/vi/k68KF6UpYFo/0.jpg)](https://www.youtube.com/watch?v=k68KF6UpYFo)

#

## 🎥 We're on TikTok!
Follow Katifetch for updates, demos & more:  
👉 [@katifetch](https://www.tiktok.com/@katifetch)

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchTikTokv2.jpg" width="287" />

---

## 📷 We're on Youtube!
Subscribe Katifetch for updates, demos & more:  
👉 [@katifetch](https://www.youtube.com/@Katifetch)

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchYouTubev2.jpg" width="287" />

---
## 📸 We're on Instagram!
folloe Katifetch for updates, demos & more:  
👉 [@katifetch](https://www.instagram.com/katifetch/)

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchInstagramv2.jpg" width="287" />
---

👥 Join our Reddit Community!

<img src="https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/whatsup.jpg" width="287" />

Got feedback? Want to share your setup or ask something?
You're welcome in the official Katifetch subreddit:
👉 [r/katifetch](https://www.reddit.com/r/katifetch/)

> 💬 Help us grow and shape the future of Katifetch!

<hr>

<div align="center">
  <p><small>Free and open-source — Built with ❤️ in Uruguay 🇺🇾</small></p>
  <p><small>South America</small></p>
</div>

