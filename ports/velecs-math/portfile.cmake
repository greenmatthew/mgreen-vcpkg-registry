vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/greenmatthew/velecs-math-cpp.git
    REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DVELECS_MATH_BUILD_TESTS=OFF
)

vcpkg_cmake_build()
vcpkg_cmake_install()

# Install the license file (adjust path if your license file has a different name)
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
