;; Auto-generated. Do not edit!


(when (boundp 'flexcraft_msgs::SaveOctomap)
  (if (not (find-package "FLEXCRAFT_MSGS"))
    (make-package "FLEXCRAFT_MSGS"))
  (shadow 'SaveOctomap (find-package "FLEXCRAFT_MSGS")))
(unless (find-package "FLEXCRAFT_MSGS::SAVEOCTOMAP")
  (make-package "FLEXCRAFT_MSGS::SAVEOCTOMAP"))
(unless (find-package "FLEXCRAFT_MSGS::SAVEOCTOMAPREQUEST")
  (make-package "FLEXCRAFT_MSGS::SAVEOCTOMAPREQUEST"))
(unless (find-package "FLEXCRAFT_MSGS::SAVEOCTOMAPRESPONSE")
  (make-package "FLEXCRAFT_MSGS::SAVEOCTOMAPRESPONSE"))

(in-package "ROS")





(defclass flexcraft_msgs::SaveOctomapRequest
  :super ros::object
  :slots (_file_path _step ))

(defmethod flexcraft_msgs::SaveOctomapRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:step __step) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _step (round __step))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; int32 _step
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; int32 _step
       (write-long _step s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _step
     (setq _step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass flexcraft_msgs::SaveOctomapResponse
  :super ros::object
  :slots (_success ))

(defmethod flexcraft_msgs::SaveOctomapResponse
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

(defclass flexcraft_msgs::SaveOctomap
  :super ros::object
  :slots ())

(setf (get flexcraft_msgs::SaveOctomap :md5sum-) "ac658a90398538172f073c94f749576e")
(setf (get flexcraft_msgs::SaveOctomap :datatype-) "flexcraft_msgs/SaveOctomap")
(setf (get flexcraft_msgs::SaveOctomap :request) flexcraft_msgs::SaveOctomapRequest)
(setf (get flexcraft_msgs::SaveOctomap :response) flexcraft_msgs::SaveOctomapResponse)

(defmethod flexcraft_msgs::SaveOctomapRequest
  (:response () (instance flexcraft_msgs::SaveOctomapResponse :init)))

(setf (get flexcraft_msgs::SaveOctomapRequest :md5sum-) "ac658a90398538172f073c94f749576e")
(setf (get flexcraft_msgs::SaveOctomapRequest :datatype-) "flexcraft_msgs/SaveOctomapRequest")
(setf (get flexcraft_msgs::SaveOctomapRequest :definition-)
      "string file_path
int32 step
---
bool success
")

(setf (get flexcraft_msgs::SaveOctomapResponse :md5sum-) "ac658a90398538172f073c94f749576e")
(setf (get flexcraft_msgs::SaveOctomapResponse :datatype-) "flexcraft_msgs/SaveOctomapResponse")
(setf (get flexcraft_msgs::SaveOctomapResponse :definition-)
      "string file_path
int32 step
---
bool success
")



(provide :flexcraft_msgs/SaveOctomap "ac658a90398538172f073c94f749576e")


