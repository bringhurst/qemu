#!/bin/bash
set -x
#export LD_DEBUG=all
export LDFLAGS=-L/home/jonb/dist/vde/master/lib
make distclean && rm -rf *-linux-user *-softmmu
./configure --prefix=/home/jonb/dist/qemu/master \
            --enable-sdl \
            --enable-gtk \
            --enable-vde \
            --extra-cflags=-I/home/jonb/dist/vde/master/include \
            --extra-ldflags=-L/home/jonb/dist/qemu/master/lib \
            && make all
