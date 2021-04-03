add_executable(learnopengl
        app.cpp
)

target_link_libraries(learnopengl PUBLIC opengl32 glfw glad glm stb)

add_custom_command(TARGET learnopengl
        POST_BUILD
        # Copy resources to binary folder
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/images/ $<TARGET_FILE_DIR:learnopengl>/images
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/shaders/ $<TARGET_FILE_DIR:learnopengl>/shaders
)
