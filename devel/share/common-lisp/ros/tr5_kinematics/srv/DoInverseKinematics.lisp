; Auto-generated. Do not edit!


(cl:in-package tr5_kinematics-srv)


;//! \htmlinclude DoInverseKinematics-request.msg.html

(cl:defclass <DoInverseKinematics-request> (roslisp-msg-protocol:ros-message)
  ((Coordinates
    :reader Coordinates
    :initarg :Coordinates
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DoInverseKinematics-request (<DoInverseKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoInverseKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoInverseKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tr5_kinematics-srv:<DoInverseKinematics-request> is deprecated: use tr5_kinematics-srv:DoInverseKinematics-request instead.")))

(cl:ensure-generic-function 'Coordinates-val :lambda-list '(m))
(cl:defmethod Coordinates-val ((m <DoInverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tr5_kinematics-srv:Coordinates-val is deprecated.  Use tr5_kinematics-srv:Coordinates instead.")
  (Coordinates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoInverseKinematics-request>) ostream)
  "Serializes a message object of type '<DoInverseKinematics-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Coordinates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoInverseKinematics-request>) istream)
  "Deserializes a message object of type '<DoInverseKinematics-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Coordinates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoInverseKinematics-request>)))
  "Returns string type for a service object of type '<DoInverseKinematics-request>"
  "tr5_kinematics/DoInverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoInverseKinematics-request)))
  "Returns string type for a service object of type 'DoInverseKinematics-request"
  "tr5_kinematics/DoInverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoInverseKinematics-request>)))
  "Returns md5sum for a message object of type '<DoInverseKinematics-request>"
  "2f2254e383e50f68fbb62f9a1189526d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoInverseKinematics-request)))
  "Returns md5sum for a message object of type 'DoInverseKinematics-request"
  "2f2254e383e50f68fbb62f9a1189526d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoInverseKinematics-request>)))
  "Returns full string definition for message of type '<DoInverseKinematics-request>"
  (cl:format cl:nil "geometry_msgs/Pose Coordinates~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoInverseKinematics-request)))
  "Returns full string definition for message of type 'DoInverseKinematics-request"
  (cl:format cl:nil "geometry_msgs/Pose Coordinates~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoInverseKinematics-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Coordinates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoInverseKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DoInverseKinematics-request
    (cl:cons ':Coordinates (Coordinates msg))
))
;//! \htmlinclude DoInverseKinematics-response.msg.html

(cl:defclass <DoInverseKinematics-response> (roslisp-msg-protocol:ros-message)
  ((Joints
    :reader Joints
    :initarg :Joints
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass DoInverseKinematics-response (<DoInverseKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoInverseKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoInverseKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tr5_kinematics-srv:<DoInverseKinematics-response> is deprecated: use tr5_kinematics-srv:DoInverseKinematics-response instead.")))

(cl:ensure-generic-function 'Joints-val :lambda-list '(m))
(cl:defmethod Joints-val ((m <DoInverseKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tr5_kinematics-srv:Joints-val is deprecated.  Use tr5_kinematics-srv:Joints instead.")
  (Joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoInverseKinematics-response>) ostream)
  "Serializes a message object of type '<DoInverseKinematics-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoInverseKinematics-response>) istream)
  "Deserializes a message object of type '<DoInverseKinematics-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoInverseKinematics-response>)))
  "Returns string type for a service object of type '<DoInverseKinematics-response>"
  "tr5_kinematics/DoInverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoInverseKinematics-response)))
  "Returns string type for a service object of type 'DoInverseKinematics-response"
  "tr5_kinematics/DoInverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoInverseKinematics-response>)))
  "Returns md5sum for a message object of type '<DoInverseKinematics-response>"
  "2f2254e383e50f68fbb62f9a1189526d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoInverseKinematics-response)))
  "Returns md5sum for a message object of type 'DoInverseKinematics-response"
  "2f2254e383e50f68fbb62f9a1189526d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoInverseKinematics-response>)))
  "Returns full string definition for message of type '<DoInverseKinematics-response>"
  (cl:format cl:nil "sensor_msgs/JointState Joints~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoInverseKinematics-response)))
  "Returns full string definition for message of type 'DoInverseKinematics-response"
  (cl:format cl:nil "sensor_msgs/JointState Joints~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoInverseKinematics-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoInverseKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DoInverseKinematics-response
    (cl:cons ':Joints (Joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DoInverseKinematics)))
  'DoInverseKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DoInverseKinematics)))
  'DoInverseKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoInverseKinematics)))
  "Returns string type for a service object of type '<DoInverseKinematics>"
  "tr5_kinematics/DoInverseKinematics")