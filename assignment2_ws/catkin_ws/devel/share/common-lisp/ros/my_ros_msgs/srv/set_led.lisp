; Auto-generated. Do not edit!


(cl:in-package my_ros_msgs-srv)


;//! \htmlinclude set_led-request.msg.html

(cl:defclass <set_led-request> (roslisp-msg-protocol:ros-message)
  ((led_num
    :reader led_num
    :initarg :led_num
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_led-request (<set_led-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_led-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_led-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_msgs-srv:<set_led-request> is deprecated: use my_ros_msgs-srv:set_led-request instead.")))

(cl:ensure-generic-function 'led_num-val :lambda-list '(m))
(cl:defmethod led_num-val ((m <set_led-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_msgs-srv:led_num-val is deprecated.  Use my_ros_msgs-srv:led_num instead.")
  (led_num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <set_led-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_msgs-srv:state-val is deprecated.  Use my_ros_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_led-request>) ostream)
  "Serializes a message object of type '<set_led-request>"
  (cl:let* ((signed (cl:slot-value msg 'led_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_led-request>) istream)
  "Deserializes a message object of type '<set_led-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_led-request>)))
  "Returns string type for a service object of type '<set_led-request>"
  "my_ros_msgs/set_ledRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led-request)))
  "Returns string type for a service object of type 'set_led-request"
  "my_ros_msgs/set_ledRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_led-request>)))
  "Returns md5sum for a message object of type '<set_led-request>"
  "13151403018f57191e13ddc5e2e35789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_led-request)))
  "Returns md5sum for a message object of type 'set_led-request"
  "13151403018f57191e13ddc5e2e35789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_led-request>)))
  "Returns full string definition for message of type '<set_led-request>"
  (cl:format cl:nil "int64 led_num~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_led-request)))
  "Returns full string definition for message of type 'set_led-request"
  (cl:format cl:nil "int64 led_num~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_led-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_led-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_led-request
    (cl:cons ':led_num (led_num msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude set_led-response.msg.html

(cl:defclass <set_led-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass set_led-response (<set_led-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_led-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_led-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_msgs-srv:<set_led-response> is deprecated: use my_ros_msgs-srv:set_led-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <set_led-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_msgs-srv:status-val is deprecated.  Use my_ros_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_led-response>) ostream)
  "Serializes a message object of type '<set_led-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_led-response>) istream)
  "Deserializes a message object of type '<set_led-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_led-response>)))
  "Returns string type for a service object of type '<set_led-response>"
  "my_ros_msgs/set_ledResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led-response)))
  "Returns string type for a service object of type 'set_led-response"
  "my_ros_msgs/set_ledResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_led-response>)))
  "Returns md5sum for a message object of type '<set_led-response>"
  "13151403018f57191e13ddc5e2e35789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_led-response)))
  "Returns md5sum for a message object of type 'set_led-response"
  "13151403018f57191e13ddc5e2e35789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_led-response>)))
  "Returns full string definition for message of type '<set_led-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_led-response)))
  "Returns full string definition for message of type 'set_led-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_led-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_led-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_led-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_led)))
  'set_led-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_led)))
  'set_led-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led)))
  "Returns string type for a service object of type '<set_led>"
  "my_ros_msgs/set_led")