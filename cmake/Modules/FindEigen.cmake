include(FindPackageHandleStandardArgs)
unset(EIGEN_FOUND)

find_path(Eigen_INCLUDE_DIR
        NAMES
        eigen3
        eigen3/unsupported
        eigen3/Eigen
        HINTS
	/usr/local)

find_package_handle_standard_args(Eigen DEFAULT_MSG Eigen_INCLUDE_DIR)
if(EIGEN_FOUND)
    set(Eigen_INCLUDE_DIRS ${Eigen_INCLUDE_DIR} ${Eigen_INCLUDE_DIR}/eigen3)
endif()

mark_as_advanced(Eigen_INCLUDE_DIR)
