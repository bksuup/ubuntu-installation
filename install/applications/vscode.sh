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

code --install-extension ms-azuretools.vscode-bicep \
	--install-extension hashicorp.terraform \
	--install-extension ms-kubernetes-tools.vscode-kubernetes-tools \
	--install-extension ms-vscode.azurecli \
	--install-extension msazurermtools.azurerm-vscode-tools \
	--install-extension samcogan.arm-snippets \
	--install-extension golang.go \
	--install-extension chaunceykiwi.json-tree-view \
	--install-extension davidanson.vscode-markdownlint \
	--install-extension ms-vscode.powershell \
	--install-extension mechatroner.rainbow-csv \
	--install-extension vscode-icons-team.vscode-icons \
	--install-extension redhat.vscode-yaml
