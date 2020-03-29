all: xor.cpp netgen.cpp xor_gen.cpp mnist.cpp

xor.cpp: xor.t; letangle.exe xor.t > xor.cpp
netgen.cpp: netgen.t; letangle.exe netgen.t > netgen.cpp
xor_gen.cpp: xor_gen.t; letangle.exe xor_gen.t > xor_gen.cpp
mnist.cpp: mnist.t; letangle.exe mnist.t > mnist.cpp
