; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude ResetOctomap-request.msg.html

(cl:defclass <ResetOctomap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetOctomap-request (<ResetOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ResetOctomap-request> is deprecated: use flexcraft_msgs-srv:ResetOctomap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOctomap-request>) ostream)
  "Serializes a message object of type '<ResetOctomap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOctomap-request>) istream)
  "Deserializes a message object of type '<ResetOctomap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOctomap-request>)))
  "Returns string type for a service object of type '<ResetOctomap-request>"
  "flexcraft_msgs/ResetOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOctomap-request)))
  "Returns string type for a service object of type 'ResetOctomap-request"
  "flexcraft_msgs/ResetOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOctomap-request>)))
  "Returns md5sum for a message object of type '<ResetOctomap-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOctomap-request)))
  "Returns md5sum for a message object of type 'ResetOctomap-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOctomap-request>)))
  "Returns full string definition for message of type '<ResetOctomap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOctomap-request)))
  "Returns full string definition for message of type 'ResetOctomap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOctomap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOctomap-request
))
;//! \htmlinclude ResetOctomap-response.msg.html

(cl:defclass <ResetOctomap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetOctomap-response (<ResetOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ResetOctomap-response> is deprecated: use flexcraft_msgs-srv:ResetOctomap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:success-val is deprecated.  Use flexcraft_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOctomap-response>) ostream)
  "Serializes a message object of type '<ResetOctomap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOctomap-response>) istream)
  "Deserializes a message object of type '<ResetOctomap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOctomap-response>)))
  "Returns string type for a service object of type '<ResetOctomap-response>"
  "flexcraft_msgs/ResetOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOctomap-response)))
  "Returns string type for a service object of type 'ResetOctomap-response"
  "flexcraft_msgs/ResetOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOctomap-response>)))
  "Returns md5sum for a message object of type '<ResetOctomap-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOctomap-response)))
  "Returns md5sum for a message object of type 'ResetOctomap-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOctomap-response>)))
  "Returns full string definition for message of type '<ResetOctomap-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOctomap-response)))
  "Returns full string definition for message of type 'ResetOctomap-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOctomap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOctomap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetOctomap)))
  'ResetOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetOctomap)))
  'ResetOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOctomap)))
  "Returns string type for a service object of type '<ResetOctomap>"
  "flexcraft_msgs/ResetOctomap")