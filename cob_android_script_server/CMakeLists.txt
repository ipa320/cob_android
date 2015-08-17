cmake_minimum_required(VERSION 2.8.3)
project(cob_android_script_server)

find_package(catkin REQUIRED COMPONENTS rospy message_generation std_msgs)

catkin_python_setup()

add_service_files(
  FILES
  Script.srv
)

generate_messages(
  DEPENDENCIES geometry_msgs std_msgs
)

catkin_package(
    CATKIN_DEPENDS message_runtime std_msgs
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

catkin_install_python(PROGRAMS scripts/script_server_android
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)