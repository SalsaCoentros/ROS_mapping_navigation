; Auto-generated. Do not edit!


(cl:in-package tr5_robot_controller-srv)


;//! \htmlinclude KinematicMode-request.msg.html

(cl:defclass <KinematicMode-request> (roslisp-msg-protocol:ros-message)
  ((mode_value
    :reader mode_value
    :initarg :mode_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass KinematicMode-request (<KinematicMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinematicMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinematicMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tr5_robot_controller-srv:<KinematicMode-request> is deprecated: use tr5_robot_controller-srv:KinematicMode-request instead.")))

(cl:ensure-generic-function 'mode_value-val :lambda-list '(m))
(cl:defmethod mode_value-val ((m <KinematicMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tr5_robot_controller-srv:mode_value-val is deprecated.  Use tr5_robot_controller-srv:mode_value instead.")
  (mode_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinematicMode-request>) ostream)
  "Serializes a message object of type '<KinematicMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinematicMode-request>) istream)
  "Deserializes a message object of type '<KinematicMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinematicMode-request>)))
  "Returns string type for a service object of type '<KinematicMode-request>"
  "tr5_robot_controller/KinematicModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicMode-request)))
  "Returns string type for a service object of type 'KinematicMode-request"
  "tr5_robot_controller/KinematicModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinematicMode-request>)))
  "Returns md5sum for a message object of type '<KinematicMode-request>"
  "ba21159b50b288da315c096c1a299273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinematicMode-request)))
  "Returns md5sum for a message object of type 'KinematicMode-request"
  "ba21159b50b288da315c096c1a299273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinematicMode-request>)))
  "Returns full string definition for message of type '<KinematicMode-request>"
  (cl:format cl:nil "uint8 mode_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinematicMode-request)))
  "Returns full string definition for message of type 'KinematicMode-request"
  (cl:format cl:nil "uint8 mode_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinematicMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinematicMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KinematicMode-request
    (cl:cons ':mode_value (mode_value msg))
))
;//! \htmlinclude KinematicMode-response.msg.html

(cl:defclass <KinematicMode-response> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KinematicMode-response (<KinematicMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinematicMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinematicMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tr5_robot_controller-srv:<KinematicMode-response> is deprecated: use tr5_robot_controller-srv:KinematicMode-response instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <KinematicMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tr5_robot_controller-srv:mode-val is deprecated.  Use tr5_robot_controller-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinematicMode-response>) ostream)
  "Serializes a message object of type '<KinematicMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinematicMode-response>) istream)
  "Deserializes a message object of type '<KinematicMode-response>"
    (cl:setf (cl:slot-value msg 'mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinematicMode-response>)))
  "Returns string type for a service object of type '<KinematicMode-response>"
  "tr5_robot_controller/KinematicModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicMode-response)))
  "Returns string type for a service object of type 'KinematicMode-response"
  "tr5_robot_controller/KinematicModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinematicMode-response>)))
  "Returns md5sum for a message object of type '<KinematicMode-response>"
  "ba21159b50b288da315c096c1a299273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinematicMode-response)))
  "Returns md5sum for a message object of type 'KinematicMode-response"
  "ba21159b50b288da315c096c1a299273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinematicMode-response>)))
  "Returns full string definition for message of type '<KinematicMode-response>"
  (cl:format cl:nil "bool mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinematicMode-response)))
  "Returns full string definition for message of type 'KinematicMode-response"
  (cl:format cl:nil "bool mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinematicMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinematicMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KinematicMode-response
    (cl:cons ':mode (mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KinematicMode)))
  'KinematicMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KinematicMode)))
  'KinematicMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicMode)))
  "Returns string type for a service object of type '<KinematicMode>"
  "tr5_robot_controller/KinematicMode")