; Auto-generated. Do not edit!


(cl:in-package my_ros_msgs-srv)


;//! \htmlinclude CircleArea-request.msg.html

(cl:defclass <CircleArea-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass CircleArea-request (<CircleArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircleArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircleArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_msgs-srv:<CircleArea-request> is deprecated: use my_ros_msgs-srv:CircleArea-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <CircleArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_msgs-srv:radius-val is deprecated.  Use my_ros_msgs-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircleArea-request>) ostream)
  "Serializes a message object of type '<CircleArea-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircleArea-request>) istream)
  "Deserializes a message object of type '<CircleArea-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircleArea-request>)))
  "Returns string type for a service object of type '<CircleArea-request>"
  "my_ros_msgs/CircleAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleArea-request)))
  "Returns string type for a service object of type 'CircleArea-request"
  "my_ros_msgs/CircleAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircleArea-request>)))
  "Returns md5sum for a message object of type '<CircleArea-request>"
  "c314357897f85c5c2498418b07dbcead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircleArea-request)))
  "Returns md5sum for a message object of type 'CircleArea-request"
  "c314357897f85c5c2498418b07dbcead")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircleArea-request>)))
  "Returns full string definition for message of type '<CircleArea-request>"
  (cl:format cl:nil "float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircleArea-request)))
  "Returns full string definition for message of type 'CircleArea-request"
  (cl:format cl:nil "float64 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircleArea-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircleArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CircleArea-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude CircleArea-response.msg.html

(cl:defclass <CircleArea-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass CircleArea-response (<CircleArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircleArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircleArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_ros_msgs-srv:<CircleArea-response> is deprecated: use my_ros_msgs-srv:CircleArea-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <CircleArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_ros_msgs-srv:area-val is deprecated.  Use my_ros_msgs-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircleArea-response>) ostream)
  "Serializes a message object of type '<CircleArea-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircleArea-response>) istream)
  "Deserializes a message object of type '<CircleArea-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircleArea-response>)))
  "Returns string type for a service object of type '<CircleArea-response>"
  "my_ros_msgs/CircleAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleArea-response)))
  "Returns string type for a service object of type 'CircleArea-response"
  "my_ros_msgs/CircleAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircleArea-response>)))
  "Returns md5sum for a message object of type '<CircleArea-response>"
  "c314357897f85c5c2498418b07dbcead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircleArea-response)))
  "Returns md5sum for a message object of type 'CircleArea-response"
  "c314357897f85c5c2498418b07dbcead")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircleArea-response>)))
  "Returns full string definition for message of type '<CircleArea-response>"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircleArea-response)))
  "Returns full string definition for message of type 'CircleArea-response"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircleArea-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircleArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CircleArea-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CircleArea)))
  'CircleArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CircleArea)))
  'CircleArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleArea)))
  "Returns string type for a service object of type '<CircleArea>"
  "my_ros_msgs/CircleArea")