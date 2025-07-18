; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude GetPcl-request.msg.html

(cl:defclass <GetPcl-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPcl-request (<GetPcl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPcl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPcl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<GetPcl-request> is deprecated: use flexcraft_msgs-srv:GetPcl-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPcl-request>) ostream)
  "Serializes a message object of type '<GetPcl-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPcl-request>) istream)
  "Deserializes a message object of type '<GetPcl-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPcl-request>)))
  "Returns string type for a service object of type '<GetPcl-request>"
  "flexcraft_msgs/GetPclRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPcl-request)))
  "Returns string type for a service object of type 'GetPcl-request"
  "flexcraft_msgs/GetPclRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPcl-request>)))
  "Returns md5sum for a message object of type '<GetPcl-request>"
  "6675bded5f9acf2f2266e0dd468b6db0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPcl-request)))
  "Returns md5sum for a message object of type 'GetPcl-request"
  "6675bded5f9acf2f2266e0dd468b6db0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPcl-request>)))
  "Returns full string definition for message of type '<GetPcl-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPcl-request)))
  "Returns full string definition for message of type 'GetPcl-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPcl-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPcl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPcl-request
))
;//! \htmlinclude GetPcl-response.msg.html

(cl:defclass <GetPcl-response> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPcl-response (<GetPcl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPcl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPcl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<GetPcl-response> is deprecated: use flexcraft_msgs-srv:GetPcl-response instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <GetPcl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:cloud-val is deprecated.  Use flexcraft_msgs-srv:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPcl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:success-val is deprecated.  Use flexcraft_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPcl-response>) ostream)
  "Serializes a message object of type '<GetPcl-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cloud))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPcl-response>) istream)
  "Deserializes a message object of type '<GetPcl-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cloud) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cloud)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPcl-response>)))
  "Returns string type for a service object of type '<GetPcl-response>"
  "flexcraft_msgs/GetPclResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPcl-response)))
  "Returns string type for a service object of type 'GetPcl-response"
  "flexcraft_msgs/GetPclResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPcl-response>)))
  "Returns md5sum for a message object of type '<GetPcl-response>"
  "6675bded5f9acf2f2266e0dd468b6db0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPcl-response)))
  "Returns md5sum for a message object of type 'GetPcl-response"
  "6675bded5f9acf2f2266e0dd468b6db0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPcl-response>)))
  "Returns full string definition for message of type '<GetPcl-response>"
  (cl:format cl:nil "geometry_msgs/Point[] cloud~%bool success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPcl-response)))
  "Returns full string definition for message of type 'GetPcl-response"
  (cl:format cl:nil "geometry_msgs/Point[] cloud~%bool success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPcl-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPcl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPcl-response
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPcl)))
  'GetPcl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPcl)))
  'GetPcl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPcl)))
  "Returns string type for a service object of type '<GetPcl>"
  "flexcraft_msgs/GetPcl")