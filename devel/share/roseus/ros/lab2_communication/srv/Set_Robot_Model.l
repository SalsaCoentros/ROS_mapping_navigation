;; Auto-generated. Do not edit!


(when (boundp 'lab2_communication::Set_Robot_Model)
  (if (not (find-package "LAB2_COMMUNICATION"))
    (make-package "LAB2_COMMUNICATION"))
  (shadow 'Set_Robot_Model (find-package "LAB2_COMMUNICATION")))
(unless (find-package "LAB2_COMMUNICATION::SET_ROBOT_MODEL")
  (make-package "LAB2_COMMUNICATION::SET_ROBOT_MODEL"))
(unless (find-package "LAB2_COMMUNICATION::SET_ROBOT_MODELREQUEST")
  (make-package "LAB2_COMMUNICATION::SET_ROBOT_MODELREQUEST"))
(unless (find-package "LAB2_COMMUNICATION::SET_ROBOT_MODELRESPONSE")
  (make-package "LAB2_COMMUNICATION::SET_ROBOT_MODELRESPONSE"))

(in-package "ROS")





(defclass lab2_communication::Set_Robot_ModelRequest
  :super ros::object
  :slots (_model ))

(defmethod lab2_communication::Set_Robot_ModelRequest
  (:init
   (&key
    ((:model __model) "")
    )
   (send-super :init)
   (setq _model (string __model))
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lab2_communication::Set_Robot_ModelResponse
  :super ros::object
  :slots (_robotID ))

(defmethod lab2_communication::Set_Robot_ModelResponse
  (:init
   (&key
    ((:robotID __robotID) (instance lab2_communication::robot_id :init))
    )
   (send-super :init)
   (setq _robotID __robotID)
   self)
  (:robotID
   (&rest __robotID)
   (if (keywordp (car __robotID))
       (send* _robotID __robotID)
     (progn
       (if __robotID (setq _robotID (car __robotID)))
       _robotID)))
  (:serialization-length
   ()
   (+
    ;; lab2_communication/robot_id _robotID
    (send _robotID :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lab2_communication/robot_id _robotID
       (send _robotID :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lab2_communication/robot_id _robotID
     (send _robotID :deserialize buf ptr-) (incf ptr- (send _robotID :serialization-length))
   ;;
   self)
  )

(defclass lab2_communication::Set_Robot_Model
  :super ros::object
  :slots ())

(setf (get lab2_communication::Set_Robot_Model :md5sum-) "51cc362f6d06def3fd71b2dbe3614cc8")
(setf (get lab2_communication::Set_Robot_Model :datatype-) "lab2_communication/Set_Robot_Model")
(setf (get lab2_communication::Set_Robot_Model :request) lab2_communication::Set_Robot_ModelRequest)
(setf (get lab2_communication::Set_Robot_Model :response) lab2_communication::Set_Robot_ModelResponse)

(defmethod lab2_communication::Set_Robot_ModelRequest
  (:response () (instance lab2_communication::Set_Robot_ModelResponse :init)))

(setf (get lab2_communication::Set_Robot_ModelRequest :md5sum-) "51cc362f6d06def3fd71b2dbe3614cc8")
(setf (get lab2_communication::Set_Robot_ModelRequest :datatype-) "lab2_communication/Set_Robot_ModelRequest")
(setf (get lab2_communication::Set_Robot_ModelRequest :definition-)
      "string model
---
lab2_communication/robot_id robotID

================================================================================
MSG: lab2_communication/robot_id
Header header
int8 id
string model
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
")

(setf (get lab2_communication::Set_Robot_ModelResponse :md5sum-) "51cc362f6d06def3fd71b2dbe3614cc8")
(setf (get lab2_communication::Set_Robot_ModelResponse :datatype-) "lab2_communication/Set_Robot_ModelResponse")
(setf (get lab2_communication::Set_Robot_ModelResponse :definition-)
      "string model
---
lab2_communication/robot_id robotID

================================================================================
MSG: lab2_communication/robot_id
Header header
int8 id
string model
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
")



(provide :lab2_communication/Set_Robot_Model "51cc362f6d06def3fd71b2dbe3614cc8")


