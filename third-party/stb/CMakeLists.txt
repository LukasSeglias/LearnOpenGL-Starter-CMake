project(stb LANGUAGES CXX)

add_subdirectory(stb_image)
add_subdirectory(stb_image_write)

add_library(stb INTERFACE)

target_link_libraries (stb INTERFACE stb_image stb_image_write)

target_include_directories (stb INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
