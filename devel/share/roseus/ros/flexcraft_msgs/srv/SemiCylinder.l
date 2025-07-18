;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::SemiCylinder)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'SemiCylinder (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::SEMICYLINDER")
  (make-package "FLEXCRAFT_MSGS::SEMICYLINDER"))
(unless (find-package "FLEXCRAFT_MSGS::SEMICYLINDERREQUEST")
  (make-package "FLEXCRAFT_MSGS::SEMICYLINDERREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::SEMICYLINDERRESPONSE")
  (make-package "FLEXCRAFT_MSGS::SEMICYLINDERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flexcraft_msgs::SemiCylinderRequest
  :super ros::object
  :slots (_sampler_type _num_samples _center _radius _min_theta _max_theta _length ))

(defmethod flexcraft_msgs::SemiCylinderRequest
  (:init
   (&key
    ((:sampler_type __sampler_type) "")
    ((:num_samples __num_samples) 0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    ((:min_theta __min_theta) 0.0)
    ((:max_theta __max_theta) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _sampler_type (string __sampler_type))
   (setq _num_samples (round __num_samples))
   (setq _center __center)
   (setq _radius (float __radius))
   (setq _min_theta (float __min_theta))
   (setq _max_theta (float __max_theta))
   (setq _length (float __length))
   self)
  (:sampler_type
   (&optional __sampler_type)
   (if __sampler_type (setq _sampler_type __sampler_type)) _sampler_type)
  (:num_samples
   (&optional __num_samples)
   (if __num_samples (setq _num_samples __num_samples)) _num_samples)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:min_theta
   (&optional __min_theta)
   (if __min_theta (setq _min_theta __min_theta)) _min_theta)
  (:max_theta
   (&optional __max_theta)
   (if __max_theta (setq _max_theta __max_theta)) _max_theta)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; string _sampler_type
    4 (length _sampler_type)
    ;; int32 _num_samples
    4
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float32 _radius
    4
    ;; float32 _min_theta
    4
    ;; float32 _max_theta
    4
    ;; float32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sampler_type
       (write-long (length _sampler_type) s) (princ _sampler_type s)
     ;; int32 _num_samples
       (write-long _num_samples s)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_theta
       (sys::poke _min_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_theta
       (sys::poke _max_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sampler_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sampler_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _num_samples
     (setq _num_samples (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_theta
     (setq _min_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_theta
     (setq _max_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass flexcraft_msgs::SemiCylinderResponse
  :super ros::object
  :slots (_view_samples ))

(defmethod flexcraft_msgs::SemiCylinderResponse
  (:init
   (&key
    ((:view_samples __view_samples) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _view_samples __view_samples)
   self)
  (:view_samples
   (&rest __view_samples)
   (if (keywordp (car __view_samples))
       (send* _view_samples __view_samples)
     (progn
       (if __view_samples (setq _view_samples (car __view_samples)))
       _view_samples)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _view_samples
    (send _view_samples :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _view_samples
       (send _view_samples :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _view_samples
     (send _view_samples :deserialize buf ptr-) (incf ptr- (send _view_samples :serialization-length))
   ;;
   self)
  )

(defclass flexcraft_msgs::SemiCylinder
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::SemiCylinder :md5sum-) "f53643562a419117971ff923d0858358")
(setf (get flexcraft_msgs::SemiCylinder :datatype-) "flexcraft_msgs/SemiCylinder")
(setf (get flexcraft_msgs::SemiCylinder :request) flexcraft_msgs::SemiCylinderRequest)
(setf (get flexcraft_msgs::SemiCylinder :response) flexcraft_msgs::SemiCylinderResponse)

(defmethod flexcraft_msgs::SemiCylinderRequest
  (:response () (instance flexcraft_msgs::SemiCylinderResponse :init)))

(setf (get flexcraft_msgs::SemiCylinderRequest :md5sum-) "f53643562a419117971ff923d0858358")
(setf (get flexcraft_msgs::SemiCylinderRequest :datatype-) "flexcraft_msgs/SemiCylinderRequest")
(setf (get flexcraft_msgs::SemiCylinderRequest :definition-)
      "string sampler_type
int32 num_samples
geometry_msgs/Point center
float32 radius
float32 min_theta
float32 max_theta
float32 length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/PoseArray view_samples

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

(setf (get flexcraft_msgs::SemiCylinderResponse :md5sum-) "f53643562a419117971ff923d0858358")
(setf (get flexcraft_msgs::SemiCylinderResponse :datatype-) "flexcraft_msgs/SemiCylinderResponse")
(setf (get flexcraft_msgs::SemiCylinderResponse :definition-)
      "string sampler_type
int32 num_samples
geometry_msgs/Point center
float32 radius
float32 min_theta
float32 max_theta
float32 length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/PoseArray view_samples

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



(provide :flexcraft_msgs/SemiCylinder "f53643562a419117971ff923d0858358")


