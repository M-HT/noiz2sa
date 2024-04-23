#!/bin/sh
rm *.o*
gcc -c `sdl2-config --cflags` -O3 -Wall *.c
g++ -c `sdl2-config --cflags` -O3 -Wall *.cc -I./bulletml/
gcc -o noiz2sa *.o* `sdl2-config --libs` -lSDL2_mixer -lbulletml -lstdc++ -lm -L./lib/x64
