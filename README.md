<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=DM+Serif+Text&weight=100&size=31&pause=1000&color=F7BE6C&center=true&width=435&lines=%F0%9F%A7%91%E2%80%8D%F0%9F%92%BBKatifetch%F0%9F%A7%91%E2%80%8D%F0%9F%92%BB" alt="Typing SVG">
</p>

[![GitHub Stars](https://img.shields.io/github/stars/ximimoments/katifetch?style=for-the-badge&logo=github&label=Stars)](https://github.com/ximimoments/katifetch)
[![License: MIT](https://img.shields.io/github/license/ximimoments/katifetch?style=for-the-badge&logo=open-source-initiative)](https://github.com/ximimoments/katifetch/blob/main/LICENSE)
[![Repo Size](https://img.shields.io/github/repo-size/ximimoments/katifetch?style=for-the-badge&logo=files&label=Repo%20Size)](https://github.com/ximimoments/katifetch)
[![Open Issues](https://img.shields.io/github/issues/ximimoments/katifetch?style=for-the-badge&logo=bug&label=Issues)](https://github.com/ximimoments/katifetch/issues)
[![Last Commit](https://img.shields.io/github/last-commit/ximimoments/katifetch?style=for-the-badge&logo=git&label=Last%20Commit)](https://github.com/ximimoments/katifetch/commits/main)

*Disclaimer: Katifetch is an independent project and is not affiliated with, endorsed by, or sponsored by any Linux distribution or organization, including but not limited to the Fedora Project™, Red Hat™, or Valve™. All trademarks, logos, and names (e.g., Fedora™, Bazzite™, Steam Deck™, COPR™) are the property of their respective owners and are used solely for identification and compatibility purposes.*

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
| **Android TV (Termux)**         | ❓     | Minimalist version planned — available August ? , 2025                |
| **Fedora (COPR repo)**          | ✅     | Installable via [COPR](https://copr.fedorainfracloud.org/coprs/ximios/katifetch/) |
| **Ubuntu/Debian (.deb)**        | ✅     | Official `.deb` package available — easy install                     |
| **Ubuntu 10.04**                | ✅     | Basic Bash script support with colored logo                          |
| **Arch Linux (AUR)**           | ✅     | Available in the Arch User Repository — install via yay or other AUR helpers |

## 🧪 Bazzite Compatibility

| Edition                             | Status | Notes                                                           |
|-------------------------------------|--------|-----------------------------------------------------------------|
| `Bazzite KDE Plasma (Desktop)`      | ✅     | Official Katifetch script with detailed UI & vivid colors       |
| `Bazzite GNOME (Base)`              | ✅     | Dedicated script included — detected automatically              |
| `Bazzite Steam Deck (KDE Plasma)`   | ✅     | Requires Steam Deck hardware — includes custom tweaks           |
| `Bazzite Steam Deck (GNOME)`        | ✅     | Runs only on Steam Deck — separate detection logic              |
| `Other distros using Bazzite script`| ❌     | Not supported — shows error message on execution                |


📅 **Last updated:** June 24, 2025

## 📄 Release Notes

### Version 1.2 (Official Release) — June 23, 2025

- 📦 Added official `.deb` package for Debian and Ubuntu systems.
- 📦 Now available on the Arch User Repository (AUR) ON June 28, 2025
- 🐧 Confirmed compatibility with Arch containers (systemd-nspawn, toolbox, podman, etc.).
- 🐛 Fixed installer to automatically create `.katifetchrc` on first run.
- 🎨 Updated themes and default appearance with `ozozfetch`.
- 🌍 Improved compatibility with systems in Brazil 🇧🇷 and Japan 🇯🇵.
- ⚙️ Better fallback logic and error handling in the fetch script.

🆕 Now supporting `.deb` format alongside `.rpm` and `.tar.gz` builds.

📄 For full details, see the [`CHANGELOG.md`](./CHANGELOG.md).

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
## And enjoy using Katifetch on Windows 11 edition! 

---
# Katifetch For Windows 10 edition

If you're using Windows 10, especially Enterprise LTSC Evaluation 2021, you can run the special PowerShell edition of Katifetch designed for older systems.

##  📦 Installation (Windows 10)

1) Download or clone the repository:

```cmd
git clone https://github.com/ximimoments/katifetch.git
```

2) Navigate to the Windows batch edition folder:
```cmd
cd katifetch\katifetchforwindowsedition
```

3) Run the install script:

```cmd
katifetch
```

## 🔄 Update (Windows 10)

To update Katifetch, run:

```cmd
update.bat
```

🧼 Uninstall (Windows 10)

To uninstall Katifetch, run:

```cmd
uninstall.bat
```

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

# Katifetch for Bazzite Editions

Katifetch supports multiple editions of Bazzite, each one tailored to its desktop environment or device (GNOME, KDE Plasma, Steam Deck).
Choose the one that matches your setup!


---

## 📦 Installation (All Bazzite Editions)

```bash
git clone https://github.com/ximimoments/katifetch.git  
cd katifetch  
cd katifetchforbazzite  
chmod +x install.sh  
./install.sh
```

> A menu will appear to select the edition:

1) Bazzite GNOME (Base)

2) Steam Deck KDE

3) Steam Deck GNOME

4) Bazzite KDE Plasma

---

## 🔄 Update (All Editions)

```bash
chmod +x update.sh  
./update.sh
```

---

🧼 Uninstall (All Editions)

```bash
chmod +x uninstall.sh  
./uninstall.sh
```

---

🎮 Available Editions

Bazzite GNOME (Base)
katifetchforbazzite-gnome.sh	
Default Bazzite edition

Bazzite KDE Plasma
katifetchforbazzite.sh	Standard KDE desktop edition

Bazzite Steam Deck KDE
katifetchforbazzite-steamdeck-kde.sh	
Optimized for Steam Deck KDE

Bazzite Steam Deck GNOME	
katifetchforbazzite-steamdeck-gnome.sh	 flavor for Steam Deck users



---

🖼️ Screenshots

Bazzite KDE Plasma

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/adsljks.png)


Bazzite GNOME

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/aa2.png)

Steam Deck KDE

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/aa3.png)

Steam Deck GNOME

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/aa1.png)

---

Enjoy Katifetch in your Bazzite-powered setup! 🐧💻🎮

#

# Katifetch for Arch Linux

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/asasddasd.png)

### Arch Linux users, meet Katifetch! 🧠📟
Now available directly from the AUR — fast, clean, and customizable.

## 📦 Installation (AUR)

With an AUR helper like ```yay```:
```bash
yay -S katifetch
```
Or manually via ```makepkg```:

```bash
git clone https://aur.archlinux.org/katifetch.git
cd katifetch
makepkg -si
```

🔗 AUR package: aur.archlinux.org/packages/katifetch

## 🔄 Updating Katifetch

Using an AUR helper:

```bash
yay -Syu katifetch
```
Or manually:

```bash
cd katifetch
git pull
makepkg -si

```
## 🧼 Uninstall

```bash
sudo pacman -Rns katifetch
```

Katifetch runs perfectly on Arch, Manjaro, EndeavourOS, and any Arch-based distro.
Stay lightweight, stay minimal. 🐧

## 🐧 Tested Environments

-    ✅ Arch container *(systemd-nspawn, podman, toolbox, etc.)*

#

<p align="center">
 — 🙏 Thank you for supporting Katifetch! — <br>
 — From the Katifetch community 💙 —<br>
 <a</a>
</p>

## 📢 Join the Community
Join our growing community to get help, share your setups, or contribute! 
👉 **[Join our Discord server](https://discord.gg/AK9WrTHTVq)**

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchdiscordserver.png)

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

## 📖 We're on Wikipedia!
Explore the full history, features, compatibility list, and more about Katifetch:  
👉 [Katifetch Wikipedia Draft](https://en.wikipedia.org/wiki/Draft:Katifetch)

![Screenshot](https://raw.githubusercontent.com/ximimoments/katifetch/main/screenshots/katifetchWikipedia.png)


## 🗣️ Real user feedback

> Hey man, Katifetch is so cool. I just installed it and I love how much easier it is to configure compared to Fastfetch.  
> It’s a bit slower than Fastfetch (maybe just my laptop lol), but I really like the project. You should totally add it to the AUR.

> 💬 Help us grow and shape the future of Katifetch!

<hr>

<div align="center">
  <p><small>Free and open-source — Built with ❤️ in Uruguay 🇺🇾</small></p>
  <p><small>South America</small></p>
</div>

https://github.com/user-attachments/assets/49ca5c90-bbae-4e0f-a82d-485465ef8969
