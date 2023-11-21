#!/bin/bash

clang -emit-llvm -S gsd.c -fno-discard-value-names -o gsd.ll

opt -dot-cfg gsd.ll

dot cfg.gsd.dot -Tpng -o gsd.cfg.png