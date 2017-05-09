#!/bin/bash

cd lib
gcc -O3 -fPIC -c example.c
ld -shared example.o -o ../example.so

rm example.o

cd ..
python3 main_ctypes.py
