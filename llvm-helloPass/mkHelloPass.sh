clang -shared -fPIC `llvm-config --cxxflags --ldflags` Hello.cpp -o hello.so


clang -emit-llvm -S input.c

opt -load ./hello.so -hello3 input.ll

