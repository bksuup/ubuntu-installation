#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y vim curl apt-transport-https ca-certificates gnupg

for installer in ~/.local/share/ubuntu-install/install/terminal/*.sh; do source $installer; done
