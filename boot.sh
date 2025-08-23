#!/usr/bin/env bash

set -e

ascii_art='
___.    __           .__          __  .__               
\_ |__ |  | _________|__| _______/  |_|__|____    ____  
 | __ \|  |/ /\_  __ \  |/  ___/\   __\  \__  \  /    \ 
 | \_\ \    <  |  | \/  |\___ \  |  | |  |/ __ \|   |  \
 |___  /__|_ \ |__|  |__/____  > |__| |__(____  /___|  /
     \/     \/               \/               \/     \/ 
'

echo -e "$ascii_art"

sudo apt update > /dev/null
sudo apt install -y git curl > /dev/null

echo "Cloning ubuntu install..."
rm -fr ~/.local/share/ubuntu-install
git clone https://github.com/bksuup/ubuntu-installation.git ~/.local/share/ubuntu-install

echo "Starting Installation..."
~/.local/share/ubuntu-install/install.sh
