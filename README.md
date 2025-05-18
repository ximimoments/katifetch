
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
And Enjoy of Katifetch for Linux!

#

# Katifetch For Windows edition

If you're on Windows, you can use the PowerShell version of Katifetch.

# 🎥 Katifetch Video Demo for Windows

📹 See how Katifetch looks on Windows (PowerShell):

➡️ [Click here to watch the video](media/katifetch-windows-demo.mp4)

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
And Enjoy of Katifetch for Windows edition!
