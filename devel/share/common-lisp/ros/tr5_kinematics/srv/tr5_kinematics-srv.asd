
(cl:in-package :asdf)

(defsystem "tr5_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "DoForwardKinematics" :depends-on ("_package_DoForwardKinematics"))
    (:file "_package_DoForwardKinematics" :depends-on ("_package"))
    (:file "DoInverseKinematics" :depends-on ("_package_DoInverseKinematics"))
    (:file "_package_DoInverseKinematics" :depends-on ("_package"))
  ))