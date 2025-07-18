; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude ClusterOctomap-request.msg.html

(cl:defclass <ClusterOctomap-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ClusterOctomap-request (<ClusterOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ClusterOctomap-request> is deprecated: use flexcraft_msgs-srv:ClusterOctomap-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <ClusterOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:cloud-val is deprecated.  Use flexcraft_msgs-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterOctomap-request>) ostream)
  "Serializes a message object of type '<ClusterOctomap-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cloud))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cloud))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterOctomap-request>) istream)
  "Deserializes a message object of type '<ClusterOctomap-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterOctomap-request>)))
  "Returns string type for a service object of type '<ClusterOctomap-request>"
  "flexcraft_msgs/ClusterOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterOctomap-request)))
  "Returns string type for a service object of type 'ClusterOctomap-request"
  "flexcraft_msgs/ClusterOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterOctomap-request>)))
  "Returns md5sum for a message object of type '<ClusterOctomap-request>"
  "0ff5ab34ceb3d552b78858a9555a8a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterOctomap-request)))
  "Returns md5sum for a message object of type 'ClusterOctomap-request"
  "0ff5ab34ceb3d552b78858a9555a8a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterOctomap-request>)))
  "Returns full string definition for message of type '<ClusterOctomap-request>"
  (cl:format cl:nil "# Octomap converted to points~%geometry_msgs/Point[] cloud~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterOctomap-request)))
  "Returns full string definition for message of type 'ClusterOctomap-request"
  (cl:format cl:nil "# Octomap converted to points~%geometry_msgs/Point[] cloud~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterOctomap-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cloud) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterOctomap-request
    (cl:cons ':cloud (cloud msg))
))
;//! \htmlinclude ClusterOctomap-response.msg.html

(cl:defclass <ClusterOctomap-response> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass ClusterOctomap-response (<ClusterOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ClusterOctomap-response> is deprecated: use flexcraft_msgs-srv:ClusterOctomap-response instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <ClusterOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:poses-val is deprecated.  Use flexcraft_msgs-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterOctomap-response>) ostream)
  "Serializes a message object of type '<ClusterOctomap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poses) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterOctomap-response>) istream)
  "Deserializes a message object of type '<ClusterOctomap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poses) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterOctomap-response>)))
  "Returns string type for a service object of type '<ClusterOctomap-response>"
  "flexcraft_msgs/ClusterOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterOctomap-response)))
  "Returns string type for a service object of type 'ClusterOctomap-response"
  "flexcraft_msgs/ClusterOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterOctomap-response>)))
  "Returns md5sum for a message object of type '<ClusterOctomap-response>"
  "0ff5ab34ceb3d552b78858a9555a8a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterOctomap-response)))
  "Returns md5sum for a message object of type 'ClusterOctomap-response"
  "0ff5ab34ceb3d552b78858a9555a8a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterOctomap-response>)))
  "Returns full string definition for message of type '<ClusterOctomap-response>"
  (cl:format cl:nil "# Pose of the clustered objects~%geometry_msgs/PoseArray poses~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterOctomap-response)))
  "Returns full string definition for message of type 'ClusterOctomap-response"
  (cl:format cl:nil "# Pose of the clustered objects~%geometry_msgs/PoseArray poses~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterOctomap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poses))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterOctomap-response
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClusterOctomap)))
  'ClusterOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClusterOctomap)))
  'ClusterOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterOctomap)))
  "Returns string type for a service object of type '<ClusterOctomap>"
  "flexcraft_msgs/ClusterOctomap")