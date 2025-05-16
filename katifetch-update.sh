#!/bin/bash

echo "Updating Katifetch..."
cd ~ || exit
git clone --depth=1 https://github.com/tu-usuario/katifetch katifetch-tmp
cp -r katifetch-tmp/* ~/katifetch/
rm -rf katifetch-tmp
echo "Update completed."

