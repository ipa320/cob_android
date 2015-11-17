cmake_minimum_required(VERSION 2.8.3)
project(cob_android_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation actionlib_msgs actionlib)

add_service_files(
  FILES
  ScreenControl.srv
  Script.srv
  Order.srv
)

add_action_files(
  FILES
  order.action
)

generate_messages(DEPENDENCIES actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime)
