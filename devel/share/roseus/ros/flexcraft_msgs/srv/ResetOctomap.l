;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::ResetOctomap)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'ResetOctomap (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::RESETOCTOMAP")
  (make-package "FLEXCRAFT_MSGS::RESETOCTOMAP"))
(unless (find-package "FLEXCRAFT_MSGS::RESETOCTOMAPREQUEST")
  (make-package "FLEXCRAFT_MSGS::RESETOCTOMAPREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::RESETOCTOMAPRESPONSE")
  (make-package "FLEXCRAFT_MSGS::RESETOCTOMAPRESPONSE"))

(in-package "ROS")





(defclass flexcraft_msgs::ResetOctomapRequest
  :super ros::object
  :slots ())

(defmethod flexcraft_msgs::ResetOctomapRequest
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

(defclass flexcraft_msgs::ResetOctomapResponse
  :super ros::object
  :slots (_success ))

(defmethod flexcraft_msgs::ResetOctomapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flexcraft_msgs::ResetOctomap
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::ResetOctomap :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flexcraft_msgs::ResetOctomap :datatype-) "flexcraft_msgs/ResetOctomap")
(setf (get flexcraft_msgs::ResetOctomap :request) flexcraft_msgs::ResetOctomapRequest)
(setf (get flexcraft_msgs::ResetOctomap :response) flexcraft_msgs::ResetOctomapResponse)

(defmethod flexcraft_msgs::ResetOctomapRequest
  (:response () (instance flexcraft_msgs::ResetOctomapResponse :init)))

(setf (get flexcraft_msgs::ResetOctomapRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flexcraft_msgs::ResetOctomapRequest :datatype-) "flexcraft_msgs/ResetOctomapRequest")
(setf (get flexcraft_msgs::ResetOctomapRequest :definition-)
      "---
bool success
")

(setf (get flexcraft_msgs::ResetOctomapResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flexcraft_msgs::ResetOctomapResponse :datatype-) "flexcraft_msgs/ResetOctomapResponse")
(setf (get flexcraft_msgs::ResetOctomapResponse :definition-)
      "---
bool success
")



(provide :flexcraft_msgs/ResetOctomap "358e233cde0c8a8bcfea4ce193f8fc15")


