cmake_minimum_required(VERSION 3.10)
project(MasoWrite)

set(CMAKE_CXX_STANDARD 17)

add_executable(MasoWrite src/main.cpp)

# wide ncurses (ncursesw)
find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})
target_link_libraries(MasoWrite ${CURSES_LIBRARIES})

