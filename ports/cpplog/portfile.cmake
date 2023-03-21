vcpkg_from_git(
	OUT_SOURCE_PATH SOURCE_PATH
	URL https://github.com/j-bruel/cpplog.git
	REF 2d0d6ce6c9490e5736f6e85278ae2b0411f0a6b0
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(INSTALL ${CURRENT_PORT_DIR}/copyright DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})