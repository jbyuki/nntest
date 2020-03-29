all: xor.cpp netgen.cpp

xor.cpp: xor.t; letangle.exe xor.t > xor.cpp
netgen.cpp: netgen.t; letangle.exe netgen.t > netgen.cpp
