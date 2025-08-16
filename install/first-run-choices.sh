#!/usr/bin/env bash

OPTIONAL_APPS=("1password" "Spotify" "Teams" "Obsidian" "Doom Emacs")
DEFAULT_OPTIONAL_APPS='1password,Spotify,Obsidian'
export FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 7 --header "Select optional apps" | tr ' ' '-')
