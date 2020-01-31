;; Auto-generated. Do not edit!


(when (boundp 'my_ros_msgs::CircleArea)
  (if (not (find-package "MY_ROS_MSGS"))
    (make-package "MY_ROS_MSGS"))
  (shadow 'CircleArea (find-package "MY_ROS_MSGS")))
(unless (find-package "MY_ROS_MSGS::CIRCLEAREA")
  (make-package "MY_ROS_MSGS::CIRCLEAREA"))
(unless (find-package "MY_ROS_MSGS::CIRCLEAREAREQUEST")
  (make-package "MY_ROS_MSGS::CIRCLEAREAREQUEST"))
(unless (find-package "MY_ROS_MSGS::CIRCLEAREARESPONSE")
  (make-package "MY_ROS_MSGS::CIRCLEAREARESPONSE"))

(in-package "ROS")





(defclass my_ros_msgs::CircleAreaRequest
  :super ros::object
  :slots (_radius ))

(defmethod my_ros_msgs::CircleAreaRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass my_ros_msgs::CircleAreaResponse
  :super ros::object
  :slots (_area ))

(defmethod my_ros_msgs::CircleAreaResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass my_ros_msgs::CircleArea
  :super ros::object
  :slots ())

(setf (get my_ros_msgs::CircleArea :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get my_ros_msgs::CircleArea :datatype-) "my_ros_msgs/CircleArea")
(setf (get my_ros_msgs::CircleArea :request) my_ros_msgs::CircleAreaRequest)
(setf (get my_ros_msgs::CircleArea :response) my_ros_msgs::CircleAreaResponse)

(defmethod my_ros_msgs::CircleAreaRequest
  (:response () (instance my_ros_msgs::CircleAreaResponse :init)))

(setf (get my_ros_msgs::CircleAreaRequest :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get my_ros_msgs::CircleAreaRequest :datatype-) "my_ros_msgs/CircleAreaRequest")
(setf (get my_ros_msgs::CircleAreaRequest :definition-)
      "float64 radius
---
float64 area

")

(setf (get my_ros_msgs::CircleAreaResponse :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get my_ros_msgs::CircleAreaResponse :datatype-) "my_ros_msgs/CircleAreaResponse")
(setf (get my_ros_msgs::CircleAreaResponse :definition-)
      "float64 radius
---
float64 area

")



(provide :my_ros_msgs/CircleArea "c314357897f85c5c2498418b07dbcead")


