#!/usr/bin/env bash

declare -a packages=(
	"git"
	"vim"
	"curl"
	"apt-transport-https"
	"ca-certificates"
	"gnupg"
)

sudo apt install -y "${packages[@]}"
