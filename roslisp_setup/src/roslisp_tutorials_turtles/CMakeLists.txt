cmake_minimum_required(VERSION 2.8.3)
project(roslisp_tutorials_turtles)

find_package(catkin REQUIRED COMPONENTS
  rospy
  roslisp
  turtlesim
  std_msgs
  geometry_msgs
  message_generation
  message_runtime
)


################################################
## Declare ROS messages, services and actions ##
################################################

add_message_files(
  FILES
  velocity.msg
)


add_service_files(
  FILES
  move.srv
  turn.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  turtlesim
  # message_generation
  # message_runtime
)

###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS geometry_msgs std_msgs rospy std_msgs message_runtime turtlesim
)

catkin_install_python(PROGRAMS nodes/navigaition
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)



# add_lisp_executable(circle turtles-system turtles-lisp-pkg:turtle-circle)
add_lisp_executable(move turtles-system turtles-lisp-pkg:move-turtle)


#############
## Install ##
#############


#############
## Testing ##
#############

