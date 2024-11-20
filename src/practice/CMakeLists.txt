cmake_minimum_required(VERSION 3.0.2)
project(practice)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_message_files(
  FILES
  my_property.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime roscpp rospy std_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(property_talker src/property_talker.cpp)
add_executable(property_listener src/property_listener.cpp)

add_dependencies(property_talker ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(property_listener ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(property_talker
  ${catkin_LIBRARIES}
)
target_link_libraries(property_listener
  ${catkin_LIBRARIES}
)