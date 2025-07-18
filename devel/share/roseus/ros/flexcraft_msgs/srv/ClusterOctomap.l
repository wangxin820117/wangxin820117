;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::ClusterOctomap)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'ClusterOctomap (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAP")
  (make-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAP"))
(unless (find-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAPREQUEST")
  (make-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAPREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAPRESPONSE")
  (make-package "FLEXCRAFT_MSGS::CLUSTEROCTOMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flexcraft_msgs::ClusterOctomapRequest
  :super ros::object
  :slots (_cloud ))

(defmethod flexcraft_msgs::ClusterOctomapRequest
  (:init
   (&key
    ((:cloud __cloud) ())
    )
   (send-super :init)
   (setq _cloud __cloud)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _cloud
    (apply #'+ (send-all _cloud :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _cloud
     (write-long (length _cloud) s)
     (dolist (elem _cloud)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _cloud
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cloud (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cloud)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass flexcraft_msgs::ClusterOctomapResponse
  :super ros::object
  :slots (_poses ))

(defmethod flexcraft_msgs::ClusterOctomapResponse
  (:init
   (&key
    ((:poses __poses) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _poses __poses)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _poses
    (send _poses :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _poses
       (send _poses :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _poses
     (send _poses :deserialize buf ptr-) (incf ptr- (send _poses :serialization-length))
   ;;
   self)
  )

(defclass flexcraft_msgs::ClusterOctomap
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::ClusterOctomap :md5sum-) "0ff5ab34ceb3d552b78858a9555a8a79")
(setf (get flexcraft_msgs::ClusterOctomap :datatype-) "flexcraft_msgs/ClusterOctomap")
(setf (get flexcraft_msgs::ClusterOctomap :request) flexcraft_msgs::ClusterOctomapRequest)
(setf (get flexcraft_msgs::ClusterOctomap :response) flexcraft_msgs::ClusterOctomapResponse)

(defmethod flexcraft_msgs::ClusterOctomapRequest
  (:response () (instance flexcraft_msgs::ClusterOctomapResponse :init)))

(setf (get flexcraft_msgs::ClusterOctomapRequest :md5sum-) "0ff5ab34ceb3d552b78858a9555a8a79")
(setf (get flexcraft_msgs::ClusterOctomapRequest :datatype-) "flexcraft_msgs/ClusterOctomapRequest")
(setf (get flexcraft_msgs::ClusterOctomapRequest :definition-)
      "# Octomap converted to points
geometry_msgs/Point[] cloud

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# Pose of the clustered objects
geometry_msgs/PoseArray poses

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get flexcraft_msgs::ClusterOctomapResponse :md5sum-) "0ff5ab34ceb3d552b78858a9555a8a79")
(setf (get flexcraft_msgs::ClusterOctomapResponse :datatype-) "flexcraft_msgs/ClusterOctomapResponse")
(setf (get flexcraft_msgs::ClusterOctomapResponse :definition-)
      "# Octomap converted to points
geometry_msgs/Point[] cloud

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
# Pose of the clustered objects
geometry_msgs/PoseArray poses

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :flexcraft_msgs/ClusterOctomap "0ff5ab34ceb3d552b78858a9555a8a79")


