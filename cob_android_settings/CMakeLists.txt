cmake_minimum_required(VERSION 3.0.2)
project(cob_android_settings)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
