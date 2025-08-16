#!/usr/bin/env bash

cd /tmp
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
rm -f packages.microsoft.gpg
cd -

sudo apt update && sudo apt install code -y

mkdir -p ~/.config/Code/User
# create user config for vscode and add to repo
# cp ~/.local/share/omakub/configs/vscode.json ~/.config/Code/User/settings.json

# add list of extensions to install
# code --install-extensio
