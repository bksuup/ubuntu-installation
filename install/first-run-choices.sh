#!/usr/bin/env bash

AVAILABLE_DESKTOP_ENVIRONMENT=("gnome-default" "gnome-default-with-basic-modifications" "tiling")
export DESKTOP_ENVIRONMENT=$(gum choose "${AVAILABLE_DESKTOP_ENVIRONMENT[@]}" --limit=1 --selected 'gnome-default' --header "Select desktop environment" | tr ' ' '-')

# Promt user for Cloud Apps or not

# Select what cloud-apps are to be installed (Default: all)
CLOUD_APPS=("azcli" "helm" "kubectl" "powershell")

# Additional optional applications
OPTIONAL_APPS=("doom-emacs" "nvim")
