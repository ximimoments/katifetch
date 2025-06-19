#!/data/data/com.termux/files/usr/bin/bash

# Katifetch Auto-Updater for Android (Termux)
# by ximimoments

set -e

REPO_URL="https://github.com/ximimoments/katifetch"
CLONE_DIR="$HOME/.katifetch-update-temp"

echo "🔄 Updating Katifetch from GitHub..."

# Remove old temp folder if exists
[ -d "$CLONE_DIR" ] && rm -rf "$CLONE_DIR"

# Clone the latest version from GitHub
git clone --depth=1 "$REPO_URL" "$CLONE_DIR"

# Run the installer from the repo
bash "$CLONE_DIR/katifetchforandroid.sh"

# Clean up
rm -rf "$CLONE_DIR"

echo -e "\n✅ Katifetch has been updated from GitHub!"
echo "🚀 Type 'katifetch' to run it."
