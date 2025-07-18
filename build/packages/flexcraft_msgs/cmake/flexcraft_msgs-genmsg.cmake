# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "flexcraft_msgs: 0 messages, 8 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(flexcraft_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseArray:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseArray:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" ""
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseArray:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseArray:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" ""
)

get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_custom_target(_flexcraft_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "flexcraft_msgs" "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_cpp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
)

### Generating Module File
_generate_module_cpp(flexcraft_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(flexcraft_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(flexcraft_msgs_generate_messages flexcraft_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_cpp _flexcraft_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flexcraft_msgs_gencpp)
add_dependencies(flexcraft_msgs_gencpp flexcraft_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flexcraft_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_eus(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
)

### Generating Module File
_generate_module_eus(flexcraft_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(flexcraft_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(flexcraft_msgs_generate_messages flexcraft_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_eus _flexcraft_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flexcraft_msgs_geneus)
add_dependencies(flexcraft_msgs_geneus flexcraft_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flexcraft_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_lisp(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
)

### Generating Module File
_generate_module_lisp(flexcraft_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(flexcraft_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(flexcraft_msgs_generate_messages flexcraft_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_lisp _flexcraft_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flexcraft_msgs_genlisp)
add_dependencies(flexcraft_msgs_genlisp flexcraft_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flexcraft_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_nodejs(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
)

### Generating Module File
_generate_module_nodejs(flexcraft_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(flexcraft_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(flexcraft_msgs_generate_messages flexcraft_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_nodejs _flexcraft_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flexcraft_msgs_gennodejs)
add_dependencies(flexcraft_msgs_gennodejs flexcraft_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flexcraft_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)
_generate_srv_py(flexcraft_msgs
  "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
)

### Generating Module File
_generate_module_py(flexcraft_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(flexcraft_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(flexcraft_msgs_generate_messages flexcraft_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ArmGoal.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ClusterOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ComputeNBV.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/ResetOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SampleViews.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SemiCylinder.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/SaveOctomap.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wangxin/Documents/Wx_ws/src/packages/flexcraft_msgs/srv/GetPcl.srv" NAME_WE)
add_dependencies(flexcraft_msgs_generate_messages_py _flexcraft_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(flexcraft_msgs_genpy)
add_dependencies(flexcraft_msgs_genpy flexcraft_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS flexcraft_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/flexcraft_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(flexcraft_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(flexcraft_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(flexcraft_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(flexcraft_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/flexcraft_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(flexcraft_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(flexcraft_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(flexcraft_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(flexcraft_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/flexcraft_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(flexcraft_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(flexcraft_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(flexcraft_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(flexcraft_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/flexcraft_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(flexcraft_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(flexcraft_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(flexcraft_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(flexcraft_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/flexcraft_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(flexcraft_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(flexcraft_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(flexcraft_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(flexcraft_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
