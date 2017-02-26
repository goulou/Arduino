# Project name
project(Arduino_EEPROM_${DEVICE_NAME})

# CMake version
cmake_minimum_required(VERSION 2.6)

file(GLOB SRC_FILES_CPP ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
file(GLOB SRC_FILES_C   ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c)
file(GLOB FILE_HEADERS   ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp)


add_library(${PROJECT_NAME} STATIC ${SRC_FILES_C} ${SRC_FILES_CPP} ${FILE_HEADERS})
set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(
	${PROJECT_NAME} PUBLIC
	${CMAKE_CURRENT_SOURCE_DIR}/src
	)
target_link_libraries(${PROJECT_NAME} Arduino_${DEVICE_NAME})

