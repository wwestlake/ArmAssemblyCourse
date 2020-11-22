#!/usr/bin/env bash

if [ -z "$1" ]; then
    printf "Error: No filename specificed\n\n"
    printf "\tUsage: $0 [filename no extension]\n\n"
    exit
fi

qemu-arm-static -L /usr/arm-linux-gnueabihf/ ./$1
echo $?

