#!/usr/bin/env bash

sudo apt install -y flatpak > /dev/null
sudo apt install -y gnome-software-plugin-flatpak > /dev/null
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
