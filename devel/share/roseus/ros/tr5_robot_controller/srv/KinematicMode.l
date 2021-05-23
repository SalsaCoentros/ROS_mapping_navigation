;; Auto-generated. Do not edit!


(when (boundp 'tr5_robot_controller::KinematicMode)
  (if (not (find-package "TR5_ROBOT_CONTROLLER"))
    (make-package "TR5_ROBOT_CONTROLLER"))
  (shadow 'KinematicMode (find-package "TR5_ROBOT_CONTROLLER")))
(unless (find-package "TR5_ROBOT_CONTROLLER::KINEMATICMODE")
  (make-package "TR5_ROBOT_CONTROLLER::KINEMATICMODE"))
(unless (find-package "TR5_ROBOT_CONTROLLER::KINEMATICMODEREQUEST")
  (make-package "TR5_ROBOT_CONTROLLER::KINEMATICMODEREQUEST"))
(unless (find-package "TR5_ROBOT_CONTROLLER::KINEMATICMODERESPONSE")
  (make-package "TR5_ROBOT_CONTROLLER::KINEMATICMODERESPONSE"))

(in-package "ROS")





(defclass tr5_robot_controller::KinematicModeRequest
  :super ros::object
  :slots (_mode_value ))

(defmethod tr5_robot_controller::KinematicModeRequest
  (:init
   (&key
    ((:mode_value __mode_value) 0)
    )
   (send-super :init)
   (setq _mode_value (round __mode_value))
   self)
  (:mode_value
   (&optional __mode_value)
   (if __mode_value (setq _mode_value __mode_value)) _mode_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode_value
       (write-byte _mode_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode_value
     (setq _mode_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tr5_robot_controller::KinematicModeResponse
  :super ros::object
  :slots (_mode ))

(defmethod tr5_robot_controller::KinematicModeResponse
  (:init
   (&key
    ((:mode __mode) nil)
    )
   (send-super :init)
   (setq _mode __mode)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; bool _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mode
       (if _mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mode
     (setq _mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tr5_robot_controller::KinematicMode
  :super ros::object
  :slots ())

(setf (get tr5_robot_controller::KinematicMode :md5sum-) "ba21159b50b288da315c096c1a299273")
(setf (get tr5_robot_controller::KinematicMode :datatype-) "tr5_robot_controller/KinematicMode")
(setf (get tr5_robot_controller::KinematicMode :request) tr5_robot_controller::KinematicModeRequest)
(setf (get tr5_robot_controller::KinematicMode :response) tr5_robot_controller::KinematicModeResponse)

(defmethod tr5_robot_controller::KinematicModeRequest
  (:response () (instance tr5_robot_controller::KinematicModeResponse :init)))

(setf (get tr5_robot_controller::KinematicModeRequest :md5sum-) "ba21159b50b288da315c096c1a299273")
(setf (get tr5_robot_controller::KinematicModeRequest :datatype-) "tr5_robot_controller/KinematicModeRequest")
(setf (get tr5_robot_controller::KinematicModeRequest :definition-)
      "uint8 mode_value
---
bool mode
")

(setf (get tr5_robot_controller::KinematicModeResponse :md5sum-) "ba21159b50b288da315c096c1a299273")
(setf (get tr5_robot_controller::KinematicModeResponse :datatype-) "tr5_robot_controller/KinematicModeResponse")
(setf (get tr5_robot_controller::KinematicModeResponse :definition-)
      "uint8 mode_value
---
bool mode
")



(provide :tr5_robot_controller/KinematicMode "ba21159b50b288da315c096c1a299273")


