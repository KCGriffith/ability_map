# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roslisp_tutorials_turtles: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iroslisp_tutorials_turtles:/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iturtlesim:/opt/ros/noetic/share/turtlesim/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roslisp_tutorials_turtles_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_custom_target(_roslisp_tutorials_turtles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roslisp_tutorials_turtles" "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" ""
)

get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_custom_target(_roslisp_tutorials_turtles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roslisp_tutorials_turtles" "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" ""
)

get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_custom_target(_roslisp_tutorials_turtles_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roslisp_tutorials_turtles" "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Services
_generate_srv_cpp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles
)
_generate_srv_cpp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Module File
_generate_module_cpp(roslisp_tutorials_turtles
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roslisp_tutorials_turtles_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roslisp_tutorials_turtles_generate_messages roslisp_tutorials_turtles_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_cpp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_cpp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_cpp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roslisp_tutorials_turtles_gencpp)
add_dependencies(roslisp_tutorials_turtles_gencpp roslisp_tutorials_turtles_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roslisp_tutorials_turtles_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Services
_generate_srv_eus(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles
)
_generate_srv_eus(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Module File
_generate_module_eus(roslisp_tutorials_turtles
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roslisp_tutorials_turtles_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roslisp_tutorials_turtles_generate_messages roslisp_tutorials_turtles_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_eus _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_eus _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_eus _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roslisp_tutorials_turtles_geneus)
add_dependencies(roslisp_tutorials_turtles_geneus roslisp_tutorials_turtles_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roslisp_tutorials_turtles_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Services
_generate_srv_lisp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles
)
_generate_srv_lisp(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Module File
_generate_module_lisp(roslisp_tutorials_turtles
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roslisp_tutorials_turtles_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roslisp_tutorials_turtles_generate_messages roslisp_tutorials_turtles_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_lisp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_lisp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_lisp _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roslisp_tutorials_turtles_genlisp)
add_dependencies(roslisp_tutorials_turtles_genlisp roslisp_tutorials_turtles_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roslisp_tutorials_turtles_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Services
_generate_srv_nodejs(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles
)
_generate_srv_nodejs(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Module File
_generate_module_nodejs(roslisp_tutorials_turtles
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roslisp_tutorials_turtles_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roslisp_tutorials_turtles_generate_messages roslisp_tutorials_turtles_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_nodejs _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_nodejs _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_nodejs _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roslisp_tutorials_turtles_gennodejs)
add_dependencies(roslisp_tutorials_turtles_gennodejs roslisp_tutorials_turtles_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roslisp_tutorials_turtles_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Services
_generate_srv_py(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles
)
_generate_srv_py(roslisp_tutorials_turtles
  "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles
)

### Generating Module File
_generate_module_py(roslisp_tutorials_turtles
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roslisp_tutorials_turtles_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roslisp_tutorials_turtles_generate_messages roslisp_tutorials_turtles_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_py _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_py _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv" NAME_WE)
add_dependencies(roslisp_tutorials_turtles_generate_messages_py _roslisp_tutorials_turtles_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roslisp_tutorials_turtles_genpy)
add_dependencies(roslisp_tutorials_turtles_genpy roslisp_tutorials_turtles_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roslisp_tutorials_turtles_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roslisp_tutorials_turtles
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET turtlesim_generate_messages_cpp)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_cpp turtlesim_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roslisp_tutorials_turtles
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET turtlesim_generate_messages_eus)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_eus turtlesim_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roslisp_tutorials_turtles
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET turtlesim_generate_messages_lisp)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_lisp turtlesim_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roslisp_tutorials_turtles
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET turtlesim_generate_messages_nodejs)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_nodejs turtlesim_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roslisp_tutorials_turtles
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET turtlesim_generate_messages_py)
  add_dependencies(roslisp_tutorials_turtles_generate_messages_py turtlesim_generate_messages_py)
endif()
