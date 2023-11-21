#!/bin/bash

clang -emit-llvm -S -fno-discard-value-names main.c -o main.ll
opt -dot-cfg main.ll
dot cfg.main.dot -Tpng -o cfg.main.png
dot cfg.add.dot -Tpng -o cfg.add.png
dot cfg.sub.dot -Tpng -o cfg.sub.png

