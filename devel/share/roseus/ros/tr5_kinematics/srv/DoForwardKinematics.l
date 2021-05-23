;; Auto-generated. Do not edit!


(when (boundp 'tr5_kinematics::DoForwardKinematics)
  (if (not (find-package "TR5_KINEMATICS"))
    (make-package "TR5_KINEMATICS"))
  (shadow 'DoForwardKinematics (find-package "TR5_KINEMATICS")))
(unless (find-package "TR5_KINEMATICS::DOFORWARDKINEMATICS")
  (make-package "TR5_KINEMATICS::DOFORWARDKINEMATICS"))
(unless (find-package "TR5_KINEMATICS::DOFORWARDKINEMATICSREQUEST")
  (make-package "TR5_KINEMATICS::DOFORWARDKINEMATICSREQUEST"))
(unless (find-package "TR5_KINEMATICS::DOFORWARDKINEMATICSRESPONSE")
  (make-package "TR5_KINEMATICS::DOFORWARDKINEMATICSRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tr5_kinematics::DoForwardKinematicsRequest
  :super ros::object
  :slots (_Joints ))

(defmethod tr5_kinematics::DoForwardKinematicsRequest
  (:init
   (&key
    ((:Joints __Joints) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _Joints __Joints)
   self)
  (:Joints
   (&rest __Joints)
   (if (keywordp (car __Joints))
       (send* _Joints __Joints)
     (progn
       (if __Joints (setq _Joints (car __Joints)))
       _Joints)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _Joints
    (send _Joints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _Joints
       (send _Joints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _Joints
     (send _Joints :deserialize buf ptr-) (incf ptr- (send _Joints :serialization-length))
   ;;
   self)
  )

(defclass tr5_kinematics::DoForwardKinematicsResponse
  :super ros::object
  :slots (_Coordinates ))

(defmethod tr5_kinematics::DoForwardKinematicsResponse
  (:init
   (&key
    ((:Coordinates __Coordinates) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _Coordinates __Coordinates)
   self)
  (:Coordinates
   (&rest __Coordinates)
   (if (keywordp (car __Coordinates))
       (send* _Coordinates __Coordinates)
     (progn
       (if __Coordinates (setq _Coordinates (car __Coordinates)))
       _Coordinates)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _Coordinates
    (send _Coordinates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _Coordinates
       (send _Coordinates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _Coordinates
     (send _Coordinates :deserialize buf ptr-) (incf ptr- (send _Coordinates :serialization-length))
   ;;
   self)
  )

(defclass tr5_kinematics::DoForwardKinematics
  :super ros::object
  :slots ())

(setf (get tr5_kinematics::DoForwardKinematics :md5sum-) "217d3f8242b6548acd90c609a65b03ca")
(setf (get tr5_kinematics::DoForwardKinematics :datatype-) "tr5_kinematics/DoForwardKinematics")
(setf (get tr5_kinematics::DoForwardKinematics :request) tr5_kinematics::DoForwardKinematicsRequest)
(setf (get tr5_kinematics::DoForwardKinematics :response) tr5_kinematics::DoForwardKinematicsResponse)

(defmethod tr5_kinematics::DoForwardKinematicsRequest
  (:response () (instance tr5_kinematics::DoForwardKinematicsResponse :init)))

(setf (get tr5_kinematics::DoForwardKinematicsRequest :md5sum-) "217d3f8242b6548acd90c609a65b03ca")
(setf (get tr5_kinematics::DoForwardKinematicsRequest :datatype-) "tr5_kinematics/DoForwardKinematicsRequest")
(setf (get tr5_kinematics::DoForwardKinematicsRequest :definition-)
      "sensor_msgs/JointState Joints

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
geometry_msgs/Pose Coordinates

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get tr5_kinematics::DoForwardKinematicsResponse :md5sum-) "217d3f8242b6548acd90c609a65b03ca")
(setf (get tr5_kinematics::DoForwardKinematicsResponse :datatype-) "tr5_kinematics/DoForwardKinematicsResponse")
(setf (get tr5_kinematics::DoForwardKinematicsResponse :definition-)
      "sensor_msgs/JointState Joints

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
geometry_msgs/Pose Coordinates

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :tr5_kinematics/DoForwardKinematics "217d3f8242b6548acd90c609a65b03ca")


