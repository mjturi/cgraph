cmake_minimum_required(VERSION 3.3)
project(cgraph)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set the C Standard
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# James' standard list of cmake flags
set(CMAKE_C_FLAGS "-std=gnu99 -Wno-unused-parameter -Wall -Wextra -Wuninitialized \
	-Wunused-variable -Wdouble-promotion -Wmissing-prototypes -Wno-maybe-uninitialized \
	-Wno-unused-function ${CMAKE_C_FLAGS}")

set(CMAKE_CXX_FLAGS "-std=c++14 -Wno-unused-parameter -Wall -Wextra -Wuninitialized -Wno-attributes \
    -Wunused-variable -Wno-double-promotion -Wno-missing-field-initializers -Wno-maybe-uninitialized \
    -Wno-unused-function ${CMAKE_CXX_FLAGS}")

add_compile_options(-Wno-unused-but-set-variable -Wno-unused-variable)

add_subdirectory(test)