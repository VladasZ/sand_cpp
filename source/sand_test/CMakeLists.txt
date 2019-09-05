
cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

project(sand_test)

add_catalog_recursive(${PROJECT_SOURCE_DIR} / SOURCE)

add_executable(${PROJECT_NAME} ${SOURCE} ${SHADERS})

link_project_at_path(sand ${sand_path})

conan_target_link_libraries(${PROJECT_NAME})

if(${IOS_BUILD})

find_library(UIKIT UIKit)
find_library(GLKIT GLKit)
find_library(OPEN_GLES OpenGLES)
find_library(FOUNDATION Foundation)

target_link_libraries(${PROJECT_NAME} ${UIKIT})
target_link_libraries(${PROJECT_NAME} ${GLKIT})
target_link_libraries(${PROJECT_NAME} ${FOUNDATION})
target_link_libraries(${PROJECT_NAME} ${OPEN_GLES})

set_target_properties(${PROJECT_NAME} PROPERTIES
  MACOSX_BUNDLE TRUE
  MACOSX_BUNDLE_GUI_IDENTIFIER org.cmake.${PROJECT_NAME}d
)

endif()



