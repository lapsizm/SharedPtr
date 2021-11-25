# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BINARY_TZ "ON")
set(CPACK_BUILD_SOURCE_DIRS "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm;/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake-build-debug")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "rusdevops")
set(CPACK_DEBIAN_PACKAGE_RELEASE "1")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/snap/clion/169/bin/cmake/linux/share/cmake-3.20/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "template built using CMake")
set(CPACK_GENERATOR "STGZ;TGZ;TZ")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake-build-debug;template;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/home/kirill/.hunter/_Base/Download/Hunter/0.23.314/95c47c9/Unpacked/cmake/modules;/home/kirill/.hunter/_Base/Download/Hunter/0.23.314/95c47c9/Unpacked/cmake/find")
set(CPACK_NSIS_DISPLAY_NAME "template 0.1.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "template 0.1.0")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake-build-debug/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/DESCRIPTION")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "template lab")
set(CPACK_PACKAGE_FILE_NAME "template-0.1.0-Linux")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "template 0.1.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "template 0.1.0")
set(CPACK_PACKAGE_NAME "template")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "0.1.0")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PROJECT_CONFIG_FILE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake/Package.cmake.in")
set(CPACK_RESOURCE_FILE_LICENSE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/LICENSE")
set(CPACK_RESOURCE_FILE_README "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/README.md")
set(CPACK_RESOURCE_FILE_WELCOME "/snap/clion/169/bin/cmake/linux/share/cmake-3.20/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_GROUP "labs")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_RELEASE "1")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake-build-debug/CPackSourceConfig.cmake")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Linux")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/kirill/new_aya/03-lab-03-shared-ptr-lapsizm/cmake-build-debug/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
