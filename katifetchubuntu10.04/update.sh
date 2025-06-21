#!/bin/bash

DIR="/usr/local/share/katifetch"
BIN="/usr/local/bin/katifetch"
REPO="https://github.com/ximimoments/katifetch.git"

if [ ! -d "$DIR" ]; then
  git clone "$REPO" "$DIR" || exit 1
else
  cd "$DIR" && git pull || exit 1
fi

cp "$DIR/katifetch.sh" "$BIN"
chmod +x "$BIN"
echo "Katifetch updated."

