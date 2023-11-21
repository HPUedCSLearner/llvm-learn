#!/bin/bash

clang -emit-llvm -S -fno-discard-value-names main.c -o main.ll -O3
opt -dot-cfg main.ll
dot cfg.main.dot -Tpng -o cfg.main.png

