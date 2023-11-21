#!/bin/bash

clang -emit-llvm -S -fno-discard-value-names main.c -o main.ll
opt -dot-callgraph main.ll
dot callgraph.dot -Tpng -o callgraph.png

