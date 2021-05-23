
(cl:in-package :asdf)

(defsystem "lab2_communication-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lab2_communication-msg
)
  :components ((:file "_package")
    (:file "Set_Robot_Model" :depends-on ("_package_Set_Robot_Model"))
    (:file "_package_Set_Robot_Model" :depends-on ("_package"))
  ))