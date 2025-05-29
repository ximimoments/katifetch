#!/data/data/com.termux/files/usr/bin/bash

echo "🔄 Updating Katifetch for Android TV..."

python <<EOF
import os
import subprocess

repo = "https://github.com/ximimoments/katifetch"
tmp = "katifetch-tv-tmp"

os.system(f"rm -rf {tmp}")
code = os.system(f"git clone --depth=1 {repo} {tmp}")

if code != 0 or not os.path.exists(tmp):
    print("❌ Update failed.")
    exit(1)

os.system(f"cp {tmp}/katifetchforandroidtv.sh $PREFIX/bin/katifetch")
os.system(f"chmod +x $PREFIX/bin/katifetch")
os.system(f"rm -rf {tmp}")
print('✅ Updated! Launching...')
EOF

katifetch
