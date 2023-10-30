#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y imagemagick ocrmypdf ghostscript pdftk
mkdir ~/Scripts
cd ~/Scripts
mkdir invert-pdf
cd invert-pdf
curl -O -L https://raw.githubusercontent.com/Vaigyanik-Jinger/invert-pdf/main/invert-pdf.sh
cd 
new_alias="alias invertpdf='bash ~/Scripts/invert-pdf/invert-pdf.sh'"
# Check if the alias is already in .bashrc to avoid duplicates
if ! grep -qF "$new_alias" ~/.bashrc; then
    # Append the alias to .bashrc
    echo "$new_alias" >> ~/.bashrc
    echo "Alias added to .bashrc"
else
    echo "Alias already exists in .bashrc, no changes made."
fi
cd
