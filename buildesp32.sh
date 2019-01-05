#!/bin/bash

cd $HOME/src/github/micropython/upy-fork-1.9.4

. ./setup_esp32.sh

make -C mpy-cross

git submodule init lib/berkeley-db-1.xx ;  git submodule update

cd ports/esp32

make

# make erase
# make deploy
