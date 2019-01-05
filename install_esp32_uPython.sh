#!/bin/bash -x

.  ./install.tools

BINARY=$HOME/src/github/micropython/upy-fork-1.9.4/ports/esp32/build/firmware.bin
ADDRESS=0x1000

$ESPTOOL --port "$PORT" --chip esp32 erase_flash
$ESPTOOL --port "$PORT" --chip esp32 --baud 460800 --after no_reset write_flash_status 0x0240 
$ESPTOOL --port "$PORT" --chip esp32 --baud 460800 --before no_reset --after no_reset write_flash --flash_size=detect "$ADDRESS"  "$BINARY"
$ESPTOOL --port "$PORT" --chip esp32 --baud 460800 --before no_reset --after no_reset read_flash_status 
$ESPTOOL --port "$PORT" --chip esp32 --baud 460800 --before no_reset verify_flash --flash_size=detect "$ADDRESS" "$BINARY"

