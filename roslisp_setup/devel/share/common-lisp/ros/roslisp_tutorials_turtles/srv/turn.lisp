; Auto-generated. Do not edit!


(cl:in-package roslisp_tutorials_turtles-srv)


;//! \htmlinclude turn-request.msg.html

(cl:defclass <turn-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass turn-request (<turn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roslisp_tutorials_turtles-srv:<turn-request> is deprecated: use roslisp_tutorials_turtles-srv:turn-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roslisp_tutorials_turtles-srv:angle-val is deprecated.  Use roslisp_tutorials_turtles-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turn-request>) ostream)
  "Serializes a message object of type '<turn-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turn-request>) istream)
  "Deserializes a message object of type '<turn-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turn-request>)))
  "Returns string type for a service object of type '<turn-request>"
  "roslisp_tutorials_turtles/turnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turn-request)))
  "Returns string type for a service object of type 'turn-request"
  "roslisp_tutorials_turtles/turnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turn-request>)))
  "Returns md5sum for a message object of type '<turn-request>"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turn-request)))
  "Returns md5sum for a message object of type 'turn-request"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turn-request>)))
  "Returns full string definition for message of type '<turn-request>"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turn-request)))
  "Returns full string definition for message of type 'turn-request"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turn-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turn-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude turn-response.msg.html

(cl:defclass <turn-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass turn-response (<turn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roslisp_tutorials_turtles-srv:<turn-response> is deprecated: use roslisp_tutorials_turtles-srv:turn-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turn-response>) ostream)
  "Serializes a message object of type '<turn-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turn-response>) istream)
  "Deserializes a message object of type '<turn-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turn-response>)))
  "Returns string type for a service object of type '<turn-response>"
  "roslisp_tutorials_turtles/turnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turn-response)))
  "Returns string type for a service object of type 'turn-response"
  "roslisp_tutorials_turtles/turnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turn-response>)))
  "Returns md5sum for a message object of type '<turn-response>"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turn-response)))
  "Returns md5sum for a message object of type 'turn-response"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turn-response>)))
  "Returns full string definition for message of type '<turn-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turn-response)))
  "Returns full string definition for message of type 'turn-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turn-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turn-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turn)))
  'turn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turn)))
  'turn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turn)))
  "Returns string type for a service object of type '<turn>"
  "roslisp_tutorials_turtles/turn")