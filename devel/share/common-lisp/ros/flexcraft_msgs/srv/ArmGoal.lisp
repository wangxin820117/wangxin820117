; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude ArmGoal-request.msg.html

(cl:defclass <ArmGoal-request> (roslisp-msg-protocol:ros-message)
  ((goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ArmGoal-request (<ArmGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ArmGoal-request> is deprecated: use flexcraft_msgs-srv:ArmGoal-request instead.")))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <ArmGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:goal_pose-val is deprecated.  Use flexcraft_msgs-srv:goal_pose instead.")
  (goal_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmGoal-request>) ostream)
  "Serializes a message object of type '<ArmGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmGoal-request>) istream)
  "Deserializes a message object of type '<ArmGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmGoal-request>)))
  "Returns string type for a service object of type '<ArmGoal-request>"
  "flexcraft_msgs/ArmGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmGoal-request)))
  "Returns string type for a service object of type 'ArmGoal-request"
  "flexcraft_msgs/ArmGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmGoal-request>)))
  "Returns md5sum for a message object of type '<ArmGoal-request>"
  "5d29b6219247a57177fcffb880bc2f7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmGoal-request)))
  "Returns md5sum for a message object of type 'ArmGoal-request"
  "5d29b6219247a57177fcffb880bc2f7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmGoal-request>)))
  "Returns full string definition for message of type '<ArmGoal-request>"
  (cl:format cl:nil "geometry_msgs/Pose goal_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmGoal-request)))
  "Returns full string definition for message of type 'ArmGoal-request"
  (cl:format cl:nil "geometry_msgs/Pose goal_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmGoal-request
    (cl:cons ':goal_pose (goal_pose msg))
))
;//! \htmlinclude ArmGoal-response.msg.html

(cl:defclass <ArmGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmGoal-response (<ArmGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ArmGoal-response> is deprecated: use flexcraft_msgs-srv:ArmGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ArmGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:success-val is deprecated.  Use flexcraft_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmGoal-response>) ostream)
  "Serializes a message object of type '<ArmGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmGoal-response>) istream)
  "Deserializes a message object of type '<ArmGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmGoal-response>)))
  "Returns string type for a service object of type '<ArmGoal-response>"
  "flexcraft_msgs/ArmGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmGoal-response)))
  "Returns string type for a service object of type 'ArmGoal-response"
  "flexcraft_msgs/ArmGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmGoal-response>)))
  "Returns md5sum for a message object of type '<ArmGoal-response>"
  "5d29b6219247a57177fcffb880bc2f7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmGoal-response)))
  "Returns md5sum for a message object of type 'ArmGoal-response"
  "5d29b6219247a57177fcffb880bc2f7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmGoal-response>)))
  "Returns full string definition for message of type '<ArmGoal-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmGoal-response)))
  "Returns full string definition for message of type 'ArmGoal-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmGoal-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmGoal)))
  'ArmGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmGoal)))
  'ArmGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmGoal)))
  "Returns string type for a service object of type '<ArmGoal>"
  "flexcraft_msgs/ArmGoal")