; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude SaveOctomap-request.msg.html

(cl:defclass <SaveOctomap-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (step
    :reader step
    :initarg :step
    :type cl:integer
    :initform 0))
)

(cl:defclass SaveOctomap-request (<SaveOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<SaveOctomap-request> is deprecated: use flexcraft_msgs-srv:SaveOctomap-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <SaveOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:file_path-val is deprecated.  Use flexcraft_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <SaveOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:step-val is deprecated.  Use flexcraft_msgs-srv:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveOctomap-request>) ostream)
  "Serializes a message object of type '<SaveOctomap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:let* ((signed (cl:slot-value msg 'step)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveOctomap-request>) istream)
  "Deserializes a message object of type '<SaveOctomap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveOctomap-request>)))
  "Returns string type for a service object of type '<SaveOctomap-request>"
  "flexcraft_msgs/SaveOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOctomap-request)))
  "Returns string type for a service object of type 'SaveOctomap-request"
  "flexcraft_msgs/SaveOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveOctomap-request>)))
  "Returns md5sum for a message object of type '<SaveOctomap-request>"
  "ac658a90398538172f073c94f749576e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveOctomap-request)))
  "Returns md5sum for a message object of type 'SaveOctomap-request"
  "ac658a90398538172f073c94f749576e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveOctomap-request>)))
  "Returns full string definition for message of type '<SaveOctomap-request>"
  (cl:format cl:nil "string file_path~%int32 step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveOctomap-request)))
  "Returns full string definition for message of type 'SaveOctomap-request"
  (cl:format cl:nil "string file_path~%int32 step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveOctomap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveOctomap-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':step (step msg))
))
;//! \htmlinclude SaveOctomap-response.msg.html

(cl:defclass <SaveOctomap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveOctomap-response (<SaveOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<SaveOctomap-response> is deprecated: use flexcraft_msgs-srv:SaveOctomap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:success-val is deprecated.  Use flexcraft_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveOctomap-response>) ostream)
  "Serializes a message object of type '<SaveOctomap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveOctomap-response>) istream)
  "Deserializes a message object of type '<SaveOctomap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveOctomap-response>)))
  "Returns string type for a service object of type '<SaveOctomap-response>"
  "flexcraft_msgs/SaveOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOctomap-response)))
  "Returns string type for a service object of type 'SaveOctomap-response"
  "flexcraft_msgs/SaveOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveOctomap-response>)))
  "Returns md5sum for a message object of type '<SaveOctomap-response>"
  "ac658a90398538172f073c94f749576e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveOctomap-response)))
  "Returns md5sum for a message object of type 'SaveOctomap-response"
  "ac658a90398538172f073c94f749576e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveOctomap-response>)))
  "Returns full string definition for message of type '<SaveOctomap-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveOctomap-response)))
  "Returns full string definition for message of type 'SaveOctomap-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveOctomap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveOctomap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveOctomap)))
  'SaveOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveOctomap)))
  'SaveOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOctomap)))
  "Returns string type for a service object of type '<SaveOctomap>"
  "flexcraft_msgs/SaveOctomap")