; Auto-generated. Do not edit!


(cl:in-package flexcraft_msgs-srv)


;//! \htmlinclude ComputeNBV-request.msg.html

(cl:defclass <ComputeNBV-request> (roslisp-msg-protocol:ros-message)
  ((candidates
    :reader candidates
    :initarg :candidates
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (bbx_centers
    :reader bbx_centers
    :initarg :bbx_centers
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (bbx_sizes
    :reader bbx_sizes
    :initarg :bbx_sizes
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (class_id
    :reader class_id
    :initarg :class_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ComputeNBV-request (<ComputeNBV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeNBV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeNBV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ComputeNBV-request> is deprecated: use flexcraft_msgs-srv:ComputeNBV-request instead.")))

(cl:ensure-generic-function 'candidates-val :lambda-list '(m))
(cl:defmethod candidates-val ((m <ComputeNBV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:candidates-val is deprecated.  Use flexcraft_msgs-srv:candidates instead.")
  (candidates m))

(cl:ensure-generic-function 'bbx_centers-val :lambda-list '(m))
(cl:defmethod bbx_centers-val ((m <ComputeNBV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:bbx_centers-val is deprecated.  Use flexcraft_msgs-srv:bbx_centers instead.")
  (bbx_centers m))

(cl:ensure-generic-function 'bbx_sizes-val :lambda-list '(m))
(cl:defmethod bbx_sizes-val ((m <ComputeNBV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:bbx_sizes-val is deprecated.  Use flexcraft_msgs-srv:bbx_sizes instead.")
  (bbx_sizes m))

(cl:ensure-generic-function 'class_id-val :lambda-list '(m))
(cl:defmethod class_id-val ((m <ComputeNBV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:class_id-val is deprecated.  Use flexcraft_msgs-srv:class_id instead.")
  (class_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeNBV-request>) ostream)
  "Serializes a message object of type '<ComputeNBV-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'candidates) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbx_centers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbx_centers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbx_sizes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbx_sizes))
  (cl:let* ((signed (cl:slot-value msg 'class_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeNBV-request>) istream)
  "Deserializes a message object of type '<ComputeNBV-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'candidates) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbx_centers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbx_centers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbx_sizes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbx_sizes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeNBV-request>)))
  "Returns string type for a service object of type '<ComputeNBV-request>"
  "flexcraft_msgs/ComputeNBVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeNBV-request)))
  "Returns string type for a service object of type 'ComputeNBV-request"
  "flexcraft_msgs/ComputeNBVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeNBV-request>)))
  "Returns md5sum for a message object of type '<ComputeNBV-request>"
  "ce14f1e75e40af74df5ebd698c79385b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeNBV-request)))
  "Returns md5sum for a message object of type 'ComputeNBV-request"
  "ce14f1e75e40af74df5ebd698c79385b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeNBV-request>)))
  "Returns full string definition for message of type '<ComputeNBV-request>"
  (cl:format cl:nil "geometry_msgs/PoseArray candidates~%geometry_msgs/Point[] bbx_centers~%geometry_msgs/Point[] bbx_sizes~%int32 class_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeNBV-request)))
  "Returns full string definition for message of type 'ComputeNBV-request"
  (cl:format cl:nil "geometry_msgs/PoseArray candidates~%geometry_msgs/Point[] bbx_centers~%geometry_msgs/Point[] bbx_sizes~%int32 class_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeNBV-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'candidates))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbx_centers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbx_sizes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeNBV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeNBV-request
    (cl:cons ':candidates (candidates msg))
    (cl:cons ':bbx_centers (bbx_centers msg))
    (cl:cons ':bbx_sizes (bbx_sizes msg))
    (cl:cons ':class_id (class_id msg))
))
;//! \htmlinclude ComputeNBV-response.msg.html

(cl:defclass <ComputeNBV-response> (roslisp-msg-protocol:ros-message)
  ((nbv_pose
    :reader nbv_pose
    :initarg :nbv_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (nbv_index
    :reader nbv_index
    :initarg :nbv_index
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ComputeNBV-response (<ComputeNBV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeNBV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeNBV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexcraft_msgs-srv:<ComputeNBV-response> is deprecated: use flexcraft_msgs-srv:ComputeNBV-response instead.")))

(cl:ensure-generic-function 'nbv_pose-val :lambda-list '(m))
(cl:defmethod nbv_pose-val ((m <ComputeNBV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:nbv_pose-val is deprecated.  Use flexcraft_msgs-srv:nbv_pose instead.")
  (nbv_pose m))

(cl:ensure-generic-function 'nbv_index-val :lambda-list '(m))
(cl:defmethod nbv_index-val ((m <ComputeNBV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:nbv_index-val is deprecated.  Use flexcraft_msgs-srv:nbv_index instead.")
  (nbv_index m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ComputeNBV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexcraft_msgs-srv:success-val is deprecated.  Use flexcraft_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeNBV-response>) ostream)
  "Serializes a message object of type '<ComputeNBV-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nbv_pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'nbv_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeNBV-response>) istream)
  "Deserializes a message object of type '<ComputeNBV-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nbv_pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nbv_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeNBV-response>)))
  "Returns string type for a service object of type '<ComputeNBV-response>"
  "flexcraft_msgs/ComputeNBVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeNBV-response)))
  "Returns string type for a service object of type 'ComputeNBV-response"
  "flexcraft_msgs/ComputeNBVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeNBV-response>)))
  "Returns md5sum for a message object of type '<ComputeNBV-response>"
  "ce14f1e75e40af74df5ebd698c79385b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeNBV-response)))
  "Returns md5sum for a message object of type 'ComputeNBV-response"
  "ce14f1e75e40af74df5ebd698c79385b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeNBV-response>)))
  "Returns full string definition for message of type '<ComputeNBV-response>"
  (cl:format cl:nil "geometry_msgs/Pose nbv_pose~%int32 nbv_index~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeNBV-response)))
  "Returns full string definition for message of type 'ComputeNBV-response"
  (cl:format cl:nil "geometry_msgs/Pose nbv_pose~%int32 nbv_index~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeNBV-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nbv_pose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeNBV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeNBV-response
    (cl:cons ':nbv_pose (nbv_pose msg))
    (cl:cons ':nbv_index (nbv_index msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeNBV)))
  'ComputeNBV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeNBV)))
  'ComputeNBV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeNBV)))
  "Returns string type for a service object of type '<ComputeNBV>"
  "flexcraft_msgs/ComputeNBV")