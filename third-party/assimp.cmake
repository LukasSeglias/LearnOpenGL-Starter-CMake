include(FetchContent)


FetchContent_Declare(
        assimp
        GIT_REPOSITORY https://github.com/assimp/assimp
        GIT_TAG        v5.0.1
)
#FetchContent_MakeAvailable(assimp)


FetchContent_GetProperties(assimp)
if(NOT assimp_POPULATED)
    FetchContent_Populate(assimp)

    set(ASSIMP_BUILD_ASSIMP_TOOLS OFF CACHE INTERNAL "Build Assimp Tools")

    add_subdirectory(${assimp_SOURCE_DIR} ${assimp_BINARY_DIR})
endif()
