cmake_minimum_required(VERSION 3.3)

SET(TARGET triangle-test)

# Enable compile optimizations
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fsee -fomit-frame-pointer -fno-signed-zeros -fno-math-errno -funroll-loops")

# Enable debug flags (use if you want to debug in gdb)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g3 -Wall -Wuninitialized -Wmaybe-uninitialized -fno-omit-frame-pointer")

# tell the linker not to worry about missing symbols in libraries
# set(CMAKE_C_FLAGS   "-Wl,--unresolved-symbols=ignore-in-shared-libs -Wno-pointer-arith ${CMAKE_C_FLAGS}")
# set(CMAKE_CXX_FLAGS "-Wl,--unresolved-symbols=ignore-in-shared-libs -Wno-pointer-arith ${CMAKE_CXX_FLAGS}")


# Build from all source files
file(GLOB all_src_files src/*.c*)

add_executable(${TARGET}
	${all_src_files}
)

include_directories(
    include
)

target_link_libraries(${TARGET}
    pthread
    graph
)

# make sure everything is installed where we want
# LIB_INSTALL_DIR comes from the parent cmake file
install(
	TARGETS			${TARGET}
	LIBRARY			DESTINATION ${LIB_INSTALL_DIR}
	RUNTIME			DESTINATION /usr/bin
	PUBLIC_HEADER	DESTINATION /usr/include
)
