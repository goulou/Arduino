# Project name
project(Arduino_WIRE_${DEVICE_NAME})

# CMake version
cmake_minimum_required(VERSION 2.6)

file(GLOB SRC_FILES_CPP ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp ${CMAKE_CURRENT_SOURCE_DIR}/src/utility/*.cpp)
file(GLOB SRC_FILES_C   ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c ${CMAKE_CURRENT_SOURCE_DIR}/src/utility/*.c)


add_library(${PROJECT_NAME} ${SRC_FILES_C} ${SRC_FILES_CPP})


target_include_directories(
	${PROJECT_NAME} PUBLIC
	${CMAKE_CURRENT_SOURCE_DIR}/src/
	${CMAKE_CURRENT_SOURCE_DIR}/src/utility/
	)
target_link_libraries(${PROJECT_NAME} Arduino_${DEVICE_NAME})

