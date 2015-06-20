# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "begginer_tutorials: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibegginer_tutorials:/home/camilo/catkin_ws/src/begginer_tutorials/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genjava REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(begginer_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_begginer_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "begginer_tutorials" "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_custom_target(_begginer_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "begginer_tutorials" "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" ""
)

#
#  langs = gencpp;genjava;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
)

### Generating Services
_generate_srv_cpp(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
)

### Generating Module File
_generate_module_cpp(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(begginer_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_cpp _begginer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_cpp _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_gencpp)
add_dependencies(begginer_tutorials_gencpp begginer_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_cpp)

### Section generating for lang: genjava
### Generating Messages
_generate_msg_java(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/begginer_tutorials
)

### Generating Services
_generate_srv_java(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/begginer_tutorials
)

### Generating Module File
_generate_module_java(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_java}"
)

add_custom_target(begginer_tutorials_generate_messages_java
  DEPENDS ${ALL_GEN_OUTPUT_FILES_java}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_java)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_java _begginer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_java _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_genjava)
add_dependencies(begginer_tutorials_genjava begginer_tutorials_generate_messages_java)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_java)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
)

### Generating Services
_generate_srv_lisp(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
)

### Generating Module File
_generate_module_lisp(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(begginer_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_lisp _begginer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_lisp _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_genlisp)
add_dependencies(begginer_tutorials_genlisp begginer_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
)

### Generating Services
_generate_srv_py(begginer_tutorials
  "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
)

### Generating Module File
_generate_module_py(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(begginer_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_py _begginer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_py _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_genpy)
add_dependencies(begginer_tutorials_genpy begginer_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(begginer_tutorials_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genjava_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${genjava_INSTALL_DIR}
  )
endif()
add_dependencies(begginer_tutorials_generate_messages_java geometry_msgs_generate_messages_java)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(begginer_tutorials_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(begginer_tutorials_generate_messages_py geometry_msgs_generate_messages_py)
