cmake_minimum_required(VERSION 3.0.2)
project(cob_android_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib actionlib_msgs message_generation)

add_service_files(
  FILES
  Order.srv
  ScreenControl.srv
  Script.srv
)

add_action_files(
  FILES
  order.action
)

generate_messages(DEPENDENCIES actionlib_msgs)

catkin_package(
  CATKIN_DEPENDS actionlib actionlib_msgs message_runtime
)
