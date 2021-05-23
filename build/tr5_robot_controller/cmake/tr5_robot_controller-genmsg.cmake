# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tr5_robot_controller: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tr5_robot_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_custom_target(_tr5_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tr5_robot_controller" "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tr5_robot_controller
  "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tr5_robot_controller
)

### Generating Module File
_generate_module_cpp(tr5_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tr5_robot_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tr5_robot_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tr5_robot_controller_generate_messages tr5_robot_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_dependencies(tr5_robot_controller_generate_messages_cpp _tr5_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tr5_robot_controller_gencpp)
add_dependencies(tr5_robot_controller_gencpp tr5_robot_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tr5_robot_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(tr5_robot_controller
  "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tr5_robot_controller
)

### Generating Module File
_generate_module_eus(tr5_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tr5_robot_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tr5_robot_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tr5_robot_controller_generate_messages tr5_robot_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_dependencies(tr5_robot_controller_generate_messages_eus _tr5_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tr5_robot_controller_geneus)
add_dependencies(tr5_robot_controller_geneus tr5_robot_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tr5_robot_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tr5_robot_controller
  "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tr5_robot_controller
)

### Generating Module File
_generate_module_lisp(tr5_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tr5_robot_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tr5_robot_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tr5_robot_controller_generate_messages tr5_robot_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_dependencies(tr5_robot_controller_generate_messages_lisp _tr5_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tr5_robot_controller_genlisp)
add_dependencies(tr5_robot_controller_genlisp tr5_robot_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tr5_robot_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(tr5_robot_controller
  "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tr5_robot_controller
)

### Generating Module File
_generate_module_nodejs(tr5_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tr5_robot_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tr5_robot_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tr5_robot_controller_generate_messages tr5_robot_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_dependencies(tr5_robot_controller_generate_messages_nodejs _tr5_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tr5_robot_controller_gennodejs)
add_dependencies(tr5_robot_controller_gennodejs tr5_robot_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tr5_robot_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tr5_robot_controller
  "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tr5_robot_controller
)

### Generating Module File
_generate_module_py(tr5_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tr5_robot_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tr5_robot_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tr5_robot_controller_generate_messages tr5_robot_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/catkin_ws/src/tr5_robot_controller/srv/KinematicMode.srv" NAME_WE)
add_dependencies(tr5_robot_controller_generate_messages_py _tr5_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tr5_robot_controller_genpy)
add_dependencies(tr5_robot_controller_genpy tr5_robot_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tr5_robot_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tr5_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tr5_robot_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tr5_robot_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tr5_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tr5_robot_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tr5_robot_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tr5_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tr5_robot_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tr5_robot_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tr5_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tr5_robot_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tr5_robot_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tr5_robot_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tr5_robot_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tr5_robot_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tr5_robot_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
