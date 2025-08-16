#!/usr/bin/env bash

sudo apt install -y autoconf automake pkg-config

cd /tmp
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo make install
cd -

