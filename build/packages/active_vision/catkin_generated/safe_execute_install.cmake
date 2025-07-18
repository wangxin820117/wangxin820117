execute_process(COMMAND "/home/wangxin/Documents/Wx_ws/build/packages/active_vision/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wangxin/Documents/Wx_ws/build/packages/active_vision/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
