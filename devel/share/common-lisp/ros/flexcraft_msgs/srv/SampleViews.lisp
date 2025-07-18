; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude SampleViews-request.msg.html

(cl:defclass <SampleViews-request> (roslisp-msg-protocol:ros-message)
  ((sampler_type
    :reader sampler_type
    :initarg :sampler_type
    :type cl:string
    :initform "")
   (num_samples
    :reader num_samples
    :initarg :num_samples
    :type cl:integer
    :initform 0)
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (min_theta
    :reader min_theta
    :initarg :min_theta
    :type cl:float
    :initform 0.0)
   (max_theta
    :reader max_theta
    :initarg :max_theta
    :type cl:float
    :initform 0.0)
   (delta_yaw
    :reader delta_yaw
    :initarg :delta_yaw
    :type cl:float
    :initform 0.0)
   (delta_pitch
    :reader delta_pitch
    :initarg :delta_pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass SampleViews-request (<SampleViews-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SampleViews-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SampleViews-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<SampleViews-request> is deprecated: use flexcraft_msgs-srv:SampleViews-request instead.")))

(cl:ensure-generic-function 'sampler_type-val :lambda-list '(m))
(cl:defmethod sampler_type-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:sampler_type-val is deprecated.  Use flexcraft_msgs-srv:sampler_type instead.")
  (sampler_type m))

(cl:ensure-generic-function 'num_samples-val :lambda-list '(m))
(cl:defmethod num_samples-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:num_samples-val is deprecated.  Use flexcraft_msgs-srv:num_samples instead.")
  (num_samples m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:center-val is deprecated.  Use flexcraft_msgs-srv:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:radius-val is deprecated.  Use flexcraft_msgs-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:length-val is deprecated.  Use flexcraft_msgs-srv:length instead.")
  (length m))

(cl:ensure-generic-function 'min_theta-val :lambda-list '(m))
(cl:defmethod min_theta-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:min_theta-val is deprecated.  Use flexcraft_msgs-srv:min_theta instead.")
  (min_theta m))

(cl:ensure-generic-function 'max_theta-val :lambda-list '(m))
(cl:defmethod max_theta-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:max_theta-val is deprecated.  Use flexcraft_msgs-srv:max_theta instead.")
  (max_theta m))

(cl:ensure-generic-function 'delta_yaw-val :lambda-list '(m))
(cl:defmethod delta_yaw-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:delta_yaw-val is deprecated.  Use flexcraft_msgs-srv:delta_yaw instead.")
  (delta_yaw m))

(cl:ensure-generic-function 'delta_pitch-val :lambda-list '(m))
(cl:defmethod delta_pitch-val ((m <SampleViews-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:delta_pitch-val is deprecated.  Use flexcraft_msgs-srv:delta_pitch instead.")
  (delta_pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SampleViews-request>) ostream)
  "Serializes a message object of type '<SampleViews-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sampler_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sampler_type))
  (cl:let* ((signed (cl:slot-value msg 'num_samples)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'delta_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'delta_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SampleViews-request>) istream)
  "Deserializes a message object of type '<SampleViews-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sampler_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sampler_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_samples) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_pitch) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SampleViews-request>)))
  "Returns string type for a service object of type '<SampleViews-request>"
  "flexcraft_msgs/SampleViewsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SampleViews-request)))
  "Returns string type for a service object of type 'SampleViews-request"
  "flexcraft_msgs/SampleViewsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SampleViews-request>)))
  "Returns md5sum for a message object of type '<SampleViews-request>"
  "b67eb928b26db8cb27e2c57ed968be8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SampleViews-request)))
  "Returns md5sum for a message object of type 'SampleViews-request"
  "b67eb928b26db8cb27e2c57ed968be8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SampleViews-request>)))
  "Returns full string definition for message of type '<SampleViews-request>"
  (cl:format cl:nil "string sampler_type~%int32 num_samples~%geometry_msgs/Point center~%float32 radius~%float32 length~%float32 min_theta~%float32 max_theta~%float32 delta_yaw~%float32 delta_pitch~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SampleViews-request)))
  "Returns full string definition for message of type 'SampleViews-request"
  (cl:format cl:nil "string sampler_type~%int32 num_samples~%geometry_msgs/Point center~%float32 radius~%float32 length~%float32 min_theta~%float32 max_theta~%float32 delta_yaw~%float32 delta_pitch~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SampleViews-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sampler_type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SampleViews-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SampleViews-request
    (cl:cons ':sampler_type (sampler_type msg))
    (cl:cons ':num_samples (num_samples msg))
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':length (length msg))
    (cl:cons ':min_theta (min_theta msg))
    (cl:cons ':max_theta (max_theta msg))
    (cl:cons ':delta_yaw (delta_yaw msg))
    (cl:cons ':delta_pitch (delta_pitch msg))
))
;//! \htmlinclude SampleViews-response.msg.html

(cl:defclass <SampleViews-response> (roslisp-msg-protocol:ros-message)
  ((view_samples
    :reader view_samples
    :initarg :view_samples
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass SampleViews-response (<SampleViews-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SampleViews-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SampleViews-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<SampleViews-response> is deprecated: use flexcraft_msgs-srv:SampleViews-response instead.")))

(cl:ensure-generic-function 'view_samples-val :lambda-list '(m))
(cl:defmethod view_samples-val ((m <SampleViews-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:view_samples-val is deprecated.  Use flexcraft_msgs-srv:view_samples instead.")
  (view_samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SampleViews-response>) ostream)
  "Serializes a message object of type '<SampleViews-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'view_samples) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SampleViews-response>) istream)
  "Deserializes a message object of type '<SampleViews-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'view_samples) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SampleViews-response>)))
  "Returns string type for a service object of type '<SampleViews-response>"
  "flexcraft_msgs/SampleViewsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SampleViews-response)))
  "Returns string type for a service object of type 'SampleViews-response"
  "flexcraft_msgs/SampleViewsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SampleViews-response>)))
  "Returns md5sum for a message object of type '<SampleViews-response>"
  "b67eb928b26db8cb27e2c57ed968be8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SampleViews-response)))
  "Returns md5sum for a message object of type 'SampleViews-response"
  "b67eb928b26db8cb27e2c57ed968be8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SampleViews-response>)))
  "Returns full string definition for message of type '<SampleViews-response>"
  (cl:format cl:nil "geometry_msgs/PoseArray view_samples~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SampleViews-response)))
  "Returns full string definition for message of type 'SampleViews-response"
  (cl:format cl:nil "geometry_msgs/PoseArray view_samples~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SampleViews-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'view_samples))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SampleViews-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SampleViews-response
    (cl:cons ':view_samples (view_samples msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SampleViews)))
  'SampleViews-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SampleViews)))
  'SampleViews-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SampleViews)))
  "Returns string type for a service object of type '<SampleViews>"
  "flexcraft_msgs/SampleViews")