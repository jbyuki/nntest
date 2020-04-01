cmake_minimum_required(VERSION 3.1)
set(CMAKE_CXX_STANDARD 14)
project(nntest)

set(INTEL "C:\\Program Files (x86)\\IntelSWTools\\parallel_studio_xe_2019.5.068\\compilers_and_libraries_2019\\windows")

include_directories(
	"${INTEL}/mkl/include"
)

link_directories(
	"${INTEL}/mkl/lib/intel64_win"
	"${INTEL}/compiler/lib/intel64_win"
)

add_executable(xor xor.cpp)
add_executable(netgen netgen.cpp)
add_executable(xor_gen xor_gen.cpp gen.h)
add_executable(mnist mnist.cpp io.cpp io.h gen_mnist.h)

target_link_libraries(mnist
	mkl_intel_lp64
	mkl_sequential
	mkl_core
)

target_link_libraries(xor_gen
	mkl_intel_lp64
	mkl_sequential
	mkl_core
)
