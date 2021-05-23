;; Auto-generated. Do not edit!


(when (boundp 'lab2_communication::robot_id)
  (if (not (find-package "LAB2_COMMUNICATION"))
    (make-package "LAB2_COMMUNICATION"))
  (shadow 'robot_id (find-package "LAB2_COMMUNICATION")))
(unless (find-package "LAB2_COMMUNICATION::ROBOT_ID")
  (make-package "LAB2_COMMUNICATION::ROBOT_ID"))

(in-package "ROS")
;;//! \htmlinclude robot_id.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lab2_communication::robot_id
  :super ros::object
  :slots (_header _id _model ))

(defmethod lab2_communication::robot_id
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:model __model) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _model (string __model))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _id
    1
    ;; string _model
    4 (length _model)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _id
       (write-byte _id s)
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lab2_communication::robot_id :md5sum-) "5c2f9e6ea3b185d6a5046a4e13f05579")
(setf (get lab2_communication::robot_id :datatype-) "lab2_communication/robot_id")
(setf (get lab2_communication::robot_id :definition-)
      "Header header
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



(provide :lab2_communication/robot_id "5c2f9e6ea3b185d6a5046a4e13f05579")


