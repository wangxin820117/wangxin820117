;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::GetPcl)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'GetPcl (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::GETPCL")
  (make-package "FLEXCRAFT_MSGS::GETPCL"))
(unless (find-package "FLEXCRAFT_MSGS::GETPCLREQUEST")
  (make-package "FLEXCRAFT_MSGS::GETPCLREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::GETPCLRESPONSE")
  (make-package "FLEXCRAFT_MSGS::GETPCLRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flexcraft_msgs::GetPclRequest
  :super ros::object
  :slots ())

(defmethod flexcraft_msgs::GetPclRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass flexcraft_msgs::GetPclResponse
  :super ros::object
  :slots (_cloud _success ))

(defmethod flexcraft_msgs::GetPclResponse
  (:init
   (&key
    ((:cloud __cloud) ())
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _cloud __cloud)
   (setq _success __success)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _cloud
    (apply #'+ (send-all _cloud :serialization-length)) 4
    ;; bool _success
    1
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flexcraft_msgs::GetPcl
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::GetPcl :md5sum-) "6675bded5f9acf2f2266e0dd468b6db0")
(setf (get flexcraft_msgs::GetPcl :datatype-) "flexcraft_msgs/GetPcl")
(setf (get flexcraft_msgs::GetPcl :request) flexcraft_msgs::GetPclRequest)
(setf (get flexcraft_msgs::GetPcl :response) flexcraft_msgs::GetPclResponse)

(defmethod flexcraft_msgs::GetPclRequest
  (:response () (instance flexcraft_msgs::GetPclResponse :init)))

(setf (get flexcraft_msgs::GetPclRequest :md5sum-) "6675bded5f9acf2f2266e0dd468b6db0")
(setf (get flexcraft_msgs::GetPclRequest :datatype-) "flexcraft_msgs/GetPclRequest")
(setf (get flexcraft_msgs::GetPclRequest :definition-)
      "---
geometry_msgs/Point[] cloud
bool success

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get flexcraft_msgs::GetPclResponse :md5sum-) "6675bded5f9acf2f2266e0dd468b6db0")
(setf (get flexcraft_msgs::GetPclResponse :datatype-) "flexcraft_msgs/GetPclResponse")
(setf (get flexcraft_msgs::GetPclResponse :definition-)
      "---
geometry_msgs/Point[] cloud
bool success

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :flexcraft_msgs/GetPcl "6675bded5f9acf2f2266e0dd468b6db0")


