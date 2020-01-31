;; Auto-generated. Do not edit!


(when (boundp 'my_ros_msgs::set_led)
  (if (not (find-package "MY_ROS_MSGS"))
    (make-package "MY_ROS_MSGS"))
  (shadow 'set_led (find-package "MY_ROS_MSGS")))
(unless (find-package "MY_ROS_MSGS::SET_LED")
  (make-package "MY_ROS_MSGS::SET_LED"))
(unless (find-package "MY_ROS_MSGS::SET_LEDREQUEST")
  (make-package "MY_ROS_MSGS::SET_LEDREQUEST"))
(unless (find-package "MY_ROS_MSGS::SET_LEDRESPONSE")
  (make-package "MY_ROS_MSGS::SET_LEDRESPONSE"))

(in-package "ROS")





(defclass my_ros_msgs::set_ledRequest
  :super ros::object
  :slots (_led_num _state ))

(defmethod my_ros_msgs::set_ledRequest
  (:init
   (&key
    ((:led_num __led_num) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _led_num (round __led_num))
   (setq _state __state)
   self)
  (:led_num
   (&optional __led_num)
   (if __led_num (setq _led_num __led_num)) _led_num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int64 _led_num
    8
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _led_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _led_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _led_num) (= (length (_led_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_led_num . bv) 0) 0) s)
              (write-long (ash (elt (_led_num . bv) 1) -1) s))
             ((and (class _led_num) (= (length (_led_num . bv)) 1)) ;; big1
              (write-long (elt (_led_num . bv) 0) s)
              (write-long (if (>= _led_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _led_num s)(write-long (if (>= _led_num 0) 0 #xffffffff) s)))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _led_num
#+(or :alpha :irix6 :x86_64)
      (setf _led_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _led_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_ros_msgs::set_ledResponse
  :super ros::object
  :slots (_status ))

(defmethod my_ros_msgs::set_ledResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_ros_msgs::set_led
  :super ros::object
  :slots ())

(setf (get my_ros_msgs::set_led :md5sum-) "13151403018f57191e13ddc5e2e35789")
(setf (get my_ros_msgs::set_led :datatype-) "my_ros_msgs/set_led")
(setf (get my_ros_msgs::set_led :request) my_ros_msgs::set_ledRequest)
(setf (get my_ros_msgs::set_led :response) my_ros_msgs::set_ledResponse)

(defmethod my_ros_msgs::set_ledRequest
  (:response () (instance my_ros_msgs::set_ledResponse :init)))

(setf (get my_ros_msgs::set_ledRequest :md5sum-) "13151403018f57191e13ddc5e2e35789")
(setf (get my_ros_msgs::set_ledRequest :datatype-) "my_ros_msgs/set_ledRequest")
(setf (get my_ros_msgs::set_ledRequest :definition-)
      "int64 led_num
bool state
---
string status

")

(setf (get my_ros_msgs::set_ledResponse :md5sum-) "13151403018f57191e13ddc5e2e35789")
(setf (get my_ros_msgs::set_ledResponse :datatype-) "my_ros_msgs/set_ledResponse")
(setf (get my_ros_msgs::set_ledResponse :definition-)
      "int64 led_num
bool state
---
string status

")



(provide :my_ros_msgs/set_led "13151403018f57191e13ddc5e2e35789")


