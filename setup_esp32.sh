#!/bin/bash

. $HOME/src/scripts/osversion.sh

if [[ "$os_name" == "Mac OS X" ]] ; then
	XTENSA=/usr/local/xtensa-esp32-elf/bin
else
	XTENSA=/opt/xtensa-esp32-elf/bin
fi

export PATH="$PATH":"$XTENSA"
export IDF_PATH="$p_git/esp-idf-3.3"
export ESPIDF="$IDF_PATH"
