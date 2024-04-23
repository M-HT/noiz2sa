#!/bin/sh
rm *.o*
gcc -c `sdl2-config --cflags` -O3 -Wall *.c -DPYRA -march=armv7ve+simd -mcpu=cortex-a15 -mtune=cortex-a15 -mfpu=neon-vfpv4 -mfloat-abi=hard -mthumb
g++ -c `sdl2-config --cflags` -O3 -Wall *.cc -I./bulletml/ -DPYRA -march=armv7ve+simd -mcpu=cortex-a15 -mtune=cortex-a15 -mfpu=neon-vfpv4 -mfloat-abi=hard -mthumb
gcc -o noiz2sa *.o* `sdl2-config --libs` -lSDL2_mixer -lbulletml -lstdc++ -lm -L./lib/armhf
