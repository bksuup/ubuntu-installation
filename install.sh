#!/usr/bin/env bash

set -e

echo "Get ready to make a few choices..."
source ~/.local/share/ubuntu-install/install/terminal/required/gum.sh >/dev/null
source ~/.local/share/ubuntu-install/install/first-run-choices.sh

echo "Installing flatpak"
source ~/.local/share/ubuntu-install/install/flatpak.sh

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

echo "Installing terminal and desktop tools..."

# Install terminal tools
source ~/.local/share/ubuntu-install/install/terminal.sh

# Install desktop tools & tweaks
source ~/.local/share/ubuntu-install/install/desktop.sh

gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300
