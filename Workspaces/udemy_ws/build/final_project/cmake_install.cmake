# Install script for directory: /home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/src/final_project

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project/action" TYPE FILE FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/src/final_project/action/Navigate2D.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project/msg" TYPE FILE FILES
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DAction.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DActionGoal.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DActionResult.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DActionFeedback.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DGoal.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DResult.msg"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/final_project/msg/Navigate2DFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project/cmake" TYPE FILE FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/build/final_project/catkin_generated/installspace/final_project-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/include/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/roseus/ros/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/common-lisp/ros/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/share/gennodejs/ros/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/lib/python3/dist-packages/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/devel/lib/python3/dist-packages/final_project")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/build/final_project/catkin_generated/installspace/final_project.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project/cmake" TYPE FILE FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/build/final_project/catkin_generated/installspace/final_project-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project/cmake" TYPE FILE FILES
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/build/final_project/catkin_generated/installspace/final_projectConfig.cmake"
    "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/build/final_project/catkin_generated/installspace/final_projectConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/final_project" TYPE FILE FILES "/home/cordova520/Documents/Udemy/ros_cpp_course/Workspaces/udemy_ws/src/final_project/package.xml")
endif()

