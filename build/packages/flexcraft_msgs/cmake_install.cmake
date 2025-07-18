# Install script for directory: /home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wangxin/Documents/Wx_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/flexcraft_msgs/srv" TYPE FILE FILES
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
    "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/flexcraft_msgs/cmake" TYPE FILE FILES "/home/wangxin/Documents/Wx_ws/build/packages/flexcraft_msgs/catkin_generated/installspace/flexcraft_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wangxin/Documents/Wx_ws/devel/include/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wangxin/Documents/Wx_ws/devel/share/roseus/ros/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wangxin/Documents/Wx_ws/devel/share/common-lisp/ros/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wangxin/Documents/Wx_ws/devel/share/gennodejs/ros/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wangxin/Documents/Wx_ws/devel/lib/python3/dist-packages/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wangxin/Documents/Wx_ws/devel/lib/python3/dist-packages/flexcraft_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wangxin/Documents/Wx_ws/build/packages/flexcraft_msgs/catkin_generated/installspace/flexcraft_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/flexcraft_msgs/cmake" TYPE FILE FILES "/home/wangxin/Documents/Wx_ws/build/packages/flexcraft_msgs/catkin_generated/installspace/flexcraft_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/flexcraft_msgs/cmake" TYPE FILE FILES
    "/home/wangxin/Documents/Wx_ws/build/packages/flexcraft_msgs/catkin_generated/installspace/flexcraft_msgsConfig.cmake"
    "/home/wangxin/Documents/Wx_ws/build/packages/flexcraft_msgs/catkin_generated/installspace/flexcraft_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/flexcraft_msgs" TYPE FILE FILES "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/package.xml")
endif()

