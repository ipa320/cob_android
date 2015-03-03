cmake_minimum_required(VERSION 2.8.3)
project(cob_android_settings)

find_package(catkin REQUIRED COMPONENTS)

#catkin_python_setup()


#######################################
## Declare ROS messages and services ##
#######################################

#add_action_files(
#  FILES
#  Script.action
#  State.action
#)

#add_message_files(
#  FILES
#  ScriptState.msg
#)

#add_service_files(
#  FILES
#  Script.srv
#)

#generate_messages(
#  DEPENDENCIES geometry_msgs std_msgs
#)


###################################
## catkin specific configuration ##
###################################

catkin_package(
    CATKIN_DEPENDS # TODO
    DEPENDS # TODO
    INCLUDE_DIRS 
    LIBRARIES # TODO
)

#############
## Install ##
#############

#install(DIRECTORY action
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(DIRECTORY common
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(DIRECTORY launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(DIRECTORY scripts
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(DIRECTORY msg
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(PROGRAMS src/cob_console.py
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/src
#)

#install(PROGRAMS src/cob_console src/cob_console.py src/script_server.py src/script_to_graph.py src/script_viewer.py src/xdot.py
#  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}/src
#)

#install(PROGRAMS test/action_interface.py test/move.py test/python_api.py test/test_say.py test/trigger.py
#  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}/test
#)

#install(PROGRAMS src/simple_script_server.py
#         DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)

## Mark executables and/or libraries for installation
#install(TARGETS cob_script_server
#  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)
