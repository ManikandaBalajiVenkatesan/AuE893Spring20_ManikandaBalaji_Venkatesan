
(cl:in-package :asdf)

(defsystem "my_ros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CircleArea" :depends-on ("_package_CircleArea"))
    (:file "_package_CircleArea" :depends-on ("_package"))
    (:file "set_led" :depends-on ("_package_set_led"))
    (:file "_package_set_led" :depends-on ("_package"))
  ))