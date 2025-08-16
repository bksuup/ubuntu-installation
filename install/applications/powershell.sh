#!/usr/bin/env bash

sudo apt-get install -y wget apt-transport-https software-properties-common

source /etc/os-release

cd /tmp	
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
cd -

sudo apt-get update && sudo apt-get install -y powershell

# Install Azure tools and update health
../after/powershell-modules.sh
