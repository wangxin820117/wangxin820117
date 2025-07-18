;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::ComputeNBV)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'ComputeNBV (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::COMPUTENBV")
  (make-package "FLEXCRAFT_MSGS::COMPUTENBV"))
(unless (find-package "FLEXCRAFT_MSGS::COMPUTENBVREQUEST")
  (make-package "FLEXCRAFT_MSGS::COMPUTENBVREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::COMPUTENBVRESPONSE")
  (make-package "FLEXCRAFT_MSGS::COMPUTENBVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flexcraft_msgs::ComputeNBVRequest
  :super ros::object
  :slots (_candidates _bbx_centers _bbx_sizes _class_id ))

(defmethod flexcraft_msgs::ComputeNBVRequest
  (:init
   (&key
    ((:candidates __candidates) (instance geometry_msgs::PoseArray :init))
    ((:bbx_centers __bbx_centers) ())
    ((:bbx_sizes __bbx_sizes) ())
    ((:class_id __class_id) 0)
    )
   (send-super :init)
   (setq _candidates __candidates)
   (setq _bbx_centers __bbx_centers)
   (setq _bbx_sizes __bbx_sizes)
   (setq _class_id (round __class_id))
   self)
  (:candidates
   (&rest __candidates)
   (if (keywordp (car __candidates))
       (send* _candidates __candidates)
     (progn
       (if __candidates (setq _candidates (car __candidates)))
       _candidates)))
  (:bbx_centers
   (&rest __bbx_centers)
   (if (keywordp (car __bbx_centers))
       (send* _bbx_centers __bbx_centers)
     (progn
       (if __bbx_centers (setq _bbx_centers (car __bbx_centers)))
       _bbx_centers)))
  (:bbx_sizes
   (&rest __bbx_sizes)
   (if (keywordp (car __bbx_sizes))
       (send* _bbx_sizes __bbx_sizes)
     (progn
       (if __bbx_sizes (setq _bbx_sizes (car __bbx_sizes)))
       _bbx_sizes)))
  (:class_id
   (&optional __class_id)
   (if __class_id (setq _class_id __class_id)) _class_id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _candidates
    (send _candidates :serialization-length)
    ;; geometry_msgs/Point[] _bbx_centers
    (apply #'+ (send-all _bbx_centers :serialization-length)) 4
    ;; geometry_msgs/Point[] _bbx_sizes
    (apply #'+ (send-all _bbx_sizes :serialization-length)) 4
    ;; int32 _class_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _candidates
       (send _candidates :serialize s)
     ;; geometry_msgs/Point[] _bbx_centers
     (write-long (length _bbx_centers) s)
     (dolist (elem _bbx_centers)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _bbx_sizes
     (write-long (length _bbx_sizes) s)
     (dolist (elem _bbx_sizes)
       (send elem :serialize s)
       )
     ;; int32 _class_id
       (write-long _class_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _candidates
     (send _candidates :deserialize buf ptr-) (incf ptr- (send _candidates :serialization-length))
   ;; geometry_msgs/Point[] _bbx_centers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbx_centers (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _bbx_centers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _bbx_sizes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbx_sizes (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _bbx_sizes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _class_id
     (setq _class_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass flexcraft_msgs::ComputeNBVResponse
  :super ros::object
  :slots (_nbv_pose _nbv_index _success ))

(defmethod flexcraft_msgs::ComputeNBVResponse
  (:init
   (&key
    ((:nbv_pose __nbv_pose) (instance geometry_msgs::Pose :init))
    ((:nbv_index __nbv_index) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _nbv_pose __nbv_pose)
   (setq _nbv_index (round __nbv_index))
   (setq _success __success)
   self)
  (:nbv_pose
   (&rest __nbv_pose)
   (if (keywordp (car __nbv_pose))
       (send* _nbv_pose __nbv_pose)
     (progn
       (if __nbv_pose (setq _nbv_pose (car __nbv_pose)))
       _nbv_pose)))
  (:nbv_index
   (&optional __nbv_index)
   (if __nbv_index (setq _nbv_index __nbv_index)) _nbv_index)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _nbv_pose
    (send _nbv_pose :serialization-length)
    ;; int32 _nbv_index
    4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _nbv_pose
       (send _nbv_pose :serialize s)
     ;; int32 _nbv_index
       (write-long _nbv_index s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _nbv_pose
     (send _nbv_pose :deserialize buf ptr-) (incf ptr- (send _nbv_pose :serialization-length))
   ;; int32 _nbv_index
     (setq _nbv_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flexcraft_msgs::ComputeNBV
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::ComputeNBV :md5sum-) "ce14f1e75e40af74df5ebd698c79385b")
(setf (get flexcraft_msgs::ComputeNBV :datatype-) "flexcraft_msgs/ComputeNBV")
(setf (get flexcraft_msgs::ComputeNBV :request) flexcraft_msgs::ComputeNBVRequest)
(setf (get flexcraft_msgs::ComputeNBV :response) flexcraft_msgs::ComputeNBVResponse)

(defmethod flexcraft_msgs::ComputeNBVRequest
  (:response () (instance flexcraft_msgs::ComputeNBVResponse :init)))

(setf (get flexcraft_msgs::ComputeNBVRequest :md5sum-) "ce14f1e75e40af74df5ebd698c79385b")
(setf (get flexcraft_msgs::ComputeNBVRequest :datatype-) "flexcraft_msgs/ComputeNBVRequest")
(setf (get flexcraft_msgs::ComputeNBVRequest :definition-)
      "geometry_msgs/PoseArray candidates
geometry_msgs/Point[] bbx_centers
geometry_msgs/Point[] bbx_sizes
int32 class_id

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
---
geometry_msgs/Pose nbv_pose
int32 nbv_index
bool success

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

(setf (get flexcraft_msgs::ComputeNBVResponse :md5sum-) "ce14f1e75e40af74df5ebd698c79385b")
(setf (get flexcraft_msgs::ComputeNBVResponse :datatype-) "flexcraft_msgs/ComputeNBVResponse")
(setf (get flexcraft_msgs::ComputeNBVResponse :definition-)
      "geometry_msgs/PoseArray candidates
geometry_msgs/Point[] bbx_centers
geometry_msgs/Point[] bbx_sizes
int32 class_id

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
---
geometry_msgs/Pose nbv_pose
int32 nbv_index
bool success

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



(provide :flexcraft_msgs/ComputeNBV "ce14f1e75e40af74df5ebd698c79385b")


