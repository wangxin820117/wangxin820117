;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::SampleViews)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'SampleViews (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::SAMPLEVIEWS")
  (make-package "FLEXCRAFT_MSGS::SAMPLEVIEWS"))
(unless (find-package "FLEXCRAFT_MSGS::SAMPLEVIEWSREQUEST")
  (make-package "FLEXCRAFT_MSGS::SAMPLEVIEWSREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::SAMPLEVIEWSRESPONSE")
  (make-package "FLEXCRAFT_MSGS::SAMPLEVIEWSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flexcraft_msgs::SampleViewsRequest
  :super ros::object
  :slots (_sampler_type _num_samples _center _radius _length _min_theta _max_theta _delta_yaw _delta_pitch ))

(defmethod flexcraft_msgs::SampleViewsRequest
  (:init
   (&key
    ((:sampler_type __sampler_type) "")
    ((:num_samples __num_samples) 0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    ((:length __length) 0.0)
    ((:min_theta __min_theta) 0.0)
    ((:max_theta __max_theta) 0.0)
    ((:delta_yaw __delta_yaw) 0.0)
    ((:delta_pitch __delta_pitch) 0.0)
    )
   (send-super :init)
   (setq _sampler_type (string __sampler_type))
   (setq _num_samples (round __num_samples))
   (setq _center __center)
   (setq _radius (float __radius))
   (setq _length (float __length))
   (setq _min_theta (float __min_theta))
   (setq _max_theta (float __max_theta))
   (setq _delta_yaw (float __delta_yaw))
   (setq _delta_pitch (float __delta_pitch))
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
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:min_theta
   (&optional __min_theta)
   (if __min_theta (setq _min_theta __min_theta)) _min_theta)
  (:max_theta
   (&optional __max_theta)
   (if __max_theta (setq _max_theta __max_theta)) _max_theta)
  (:delta_yaw
   (&optional __delta_yaw)
   (if __delta_yaw (setq _delta_yaw __delta_yaw)) _delta_yaw)
  (:delta_pitch
   (&optional __delta_pitch)
   (if __delta_pitch (setq _delta_pitch __delta_pitch)) _delta_pitch)
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
    ;; float32 _length
    4
    ;; float32 _min_theta
    4
    ;; float32 _max_theta
    4
    ;; float32 _delta_yaw
    4
    ;; float32 _delta_pitch
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
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_theta
       (sys::poke _min_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_theta
       (sys::poke _max_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delta_yaw
       (sys::poke _delta_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delta_pitch
       (sys::poke _delta_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_theta
     (setq _min_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_theta
     (setq _max_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delta_yaw
     (setq _delta_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delta_pitch
     (setq _delta_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass flexcraft_msgs::SampleViewsResponse
  :super ros::object
  :slots (_view_samples ))

(defmethod flexcraft_msgs::SampleViewsResponse
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

(defclass flexcraft_msgs::SampleViews
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::SampleViews :md5sum-) "b67eb928b26db8cb27e2c57ed968be8b")
(setf (get flexcraft_msgs::SampleViews :datatype-) "flexcraft_msgs/SampleViews")
(setf (get flexcraft_msgs::SampleViews :request) flexcraft_msgs::SampleViewsRequest)
(setf (get flexcraft_msgs::SampleViews :response) flexcraft_msgs::SampleViewsResponse)

(defmethod flexcraft_msgs::SampleViewsRequest
  (:response () (instance flexcraft_msgs::SampleViewsResponse :init)))

(setf (get flexcraft_msgs::SampleViewsRequest :md5sum-) "b67eb928b26db8cb27e2c57ed968be8b")
(setf (get flexcraft_msgs::SampleViewsRequest :datatype-) "flexcraft_msgs/SampleViewsRequest")
(setf (get flexcraft_msgs::SampleViewsRequest :definition-)
      "string sampler_type
int32 num_samples
geometry_msgs/Point center
float32 radius
float32 length
float32 min_theta
float32 max_theta
float32 delta_yaw
float32 delta_pitch

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

(setf (get flexcraft_msgs::SampleViewsResponse :md5sum-) "b67eb928b26db8cb27e2c57ed968be8b")
(setf (get flexcraft_msgs::SampleViewsResponse :datatype-) "flexcraft_msgs/SampleViewsResponse")
(setf (get flexcraft_msgs::SampleViewsResponse :definition-)
      "string sampler_type
int32 num_samples
geometry_msgs/Point center
float32 radius
float32 length
float32 min_theta
float32 max_theta
float32 delta_yaw
float32 delta_pitch

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



(provide :flexcraft_msgs/SampleViews "b67eb928b26db8cb27e2c57ed968be8b")


