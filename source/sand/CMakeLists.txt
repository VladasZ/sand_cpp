cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

project(sand)

add_catalog_recursive(${PROJECT_SOURCE_DIR} /Source SOURCE)

# if(IOS_BUILD)
#   set(CMAKE_LINKER_FLAGS "-Wl,--export-all-symbols")
# endif()

add_library(${PROJECT_NAME} ${SOURCE})
