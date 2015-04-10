# Project name
project(Arduino_LiquidCrystal_${DEVICE_NAME})

# CMake version
cmake_minimum_required(VERSION 2.6)

file(GLOB SRC_FILES_CPP ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
file(GLOB SRC_FILES_C   ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c)


add_library(${PROJECT_NAME} ${SRC_FILES_C} ${SRC_FILES_CPP})


target_include_directories(
	${PROJECT_NAME} PUBLIC
	${CMAKE_CURRENT_SOURCE_DIR}/src
	)
target_link_libraries(${PROJECT_NAME} Arduino_${DEVICE_NAME})

