#!/bin/sh
rm *.o*
gcc `sdl-config --cflags` -O3 -c -Wall *.c
g++ `sdl-config --cflags` -O3 -c -Wall *.cc -I./bulletml/
gcc -o noiz2sa *.o* `sdl-config --libs` -lSDL_mixer -lbulletml -lstdc++ -lm -L./lib/x64
