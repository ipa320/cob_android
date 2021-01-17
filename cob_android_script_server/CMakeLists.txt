cmake_minimum_required(VERSION 3.0.2)
project(cob_android_script_server)

find_package(catkin REQUIRED COMPONENTS)

catkin_python_setup()

catkin_package()

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

catkin_install_python(PROGRAMS scripts/script_server_android
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
