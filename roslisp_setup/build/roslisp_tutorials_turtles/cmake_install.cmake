# Install script for directory: /home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hawk/winter_project/roslisp_setup/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles/msg" TYPE FILE FILES "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/msg/velocity.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles/srv" TYPE FILE FILES
    "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/move.srv"
    "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/srv/turn.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles/cmake" TYPE FILE FILES "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/roslisp_tutorials_turtles-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hawk/winter_project/roslisp_setup/devel/include/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hawk/winter_project/roslisp_setup/devel/share/roseus/ros/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hawk/winter_project/roslisp_setup/devel/share/common-lisp/ros/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hawk/winter_project/roslisp_setup/devel/share/gennodejs/ros/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/hawk/winter_project/roslisp_setup/devel/lib/python3/dist-packages/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/hawk/winter_project/roslisp_setup/devel/lib/python3/dist-packages/roslisp_tutorials_turtles")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/roslisp_tutorials_turtles.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles/cmake" TYPE FILE FILES "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/roslisp_tutorials_turtles-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles/cmake" TYPE FILE FILES
    "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/roslisp_tutorials_turtlesConfig.cmake"
    "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/roslisp_tutorials_turtlesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roslisp_tutorials_turtles" TYPE FILE FILES "/home/hawk/winter_project/roslisp_setup/src/roslisp_tutorials_turtles/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/roslisp_tutorials_turtles" TYPE PROGRAM FILES "/home/hawk/winter_project/roslisp_setup/build/roslisp_tutorials_turtles/catkin_generated/installspace/navigaition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/roslisp_tutorials_turtles" TYPE PROGRAM FILES "/home/hawk/winter_project/roslisp_setup/devel/lib/roslisp_tutorials_turtles/move")
endif()

